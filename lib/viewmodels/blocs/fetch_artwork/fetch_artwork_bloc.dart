import 'package:artify/models/api/app_exception.dart';
import 'package:artify/models/constants/index.dart';
import 'package:artify/models/entities/artwork.dart';
import 'package:artify/models/repository/artwork_repository.dart';
import 'package:artify/viewmodels/cache/cache_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'fetch_artwork_event.dart';
part 'fetch_artwork_state.dart';

class FetchArtworkBloc extends Bloc<FetchArtworkEvent, FetchArtworkState> {
  final ArtworkRepository artworkRepository;

  FetchArtworkBloc(this.artworkRepository) : super(HomePageInitial()) {
    on<FetchArtworkEvent>(
        (FetchArtworkEvent event, Emitter<FetchArtworkState> emit) async {
      if (event is CallArtworkAPI) {
        emit(HomePageLoading());

        CacheHandler cacheHandler = CacheHandler();

        List<Artwork> cachedList = await cacheHandler.getCachedData();

        bool internetConnectivity =
            await InternetConnection().hasInternetAccess;

        if (cachedList.isEmpty) {
          if (internetConnectivity) {
            Either<AppException, List<Artwork>> allArtworks =
                await artworkRepository.fetchArtworkFromApi(artworkApi);
            allArtworks.fold((failure) => emit(HomePageError(failure)),
                (artList) {
              cacheHandler.saveDataToCache(artList);

              Set<String> filterList = {};

              for (var artwork in artList) {
                if (artwork.category.isNotEmpty) {
                  filterList.add(artwork.category);
                }
              }

              emit(HomePageSuccess(
                artList: artList,
                displayedArtList: artList,
                filterList: filterList.toList(),
              ));
            });
          } else {
            emit(HomePageError(FetchDataException("No network found")));
          }
        } else {
          if (internetConnectivity) {
            Either<AppException, List<Artwork>> allArtworks =
                await artworkRepository.fetchArtworkFromApi(artworkApi);

            allArtworks.fold((failure) => emit(HomePageError(failure)),
                (artList) {
              cacheHandler.saveDataToCache(artList);

              Set<String> filterList = {};

              for (var artwork in artList) {
                if (artwork.category.isNotEmpty) {
                  filterList.add(artwork.category);
                }
              }

              emit(HomePageSuccess(
                artList: artList,
                displayedArtList: artList,
                filterList: filterList.toList(),
              ));
            });
          } else {
            Set<String> filterList = {};
            for (var artwork in (cachedList ?? [])) {
              if (artwork.category.isNotEmpty) {
                filterList.add(artwork.category);
              }
            }

            emit(HomePageSuccess(
              artList: cachedList ?? [],
              displayedArtList: cachedList ?? [],
              filterList: filterList.toList(),
            ));
          }
        }
      } else if (event is ApplyFilters) {
        List<Artwork> filteredArtworks = [];

        if (event.filtersApplied.isNotEmpty) {
          for (var filter in event.filtersApplied) {
            for (var art in state.artList) {
              if (art.category == filter) {
                filteredArtworks.add(art);
              }
            }
          }
        }

        emit(state.copyWith(
            appliedFilterList: event.filtersApplied,
            displayedArtList: event.filtersApplied.isEmpty
                ? state.artList
                : filteredArtworks));
      } else {
        //Unknown event handler
      }
    });
  }
}
