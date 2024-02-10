import 'dart:developer';

import 'package:artify/models/api/app_exception.dart';
import 'package:artify/models/constants/index.dart';
import 'package:artify/models/entities/artwork.dart';
import 'package:artify/models/repository/artwork_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'fetch_artwork_event.dart';
part 'fetch_artwork_state.dart';

class FetchArtworkBloc extends Bloc<FetchArtworkEvent, FetchArtworkState> {
  final ArtworkRepository artworkRepository;

  FetchArtworkBloc(this.artworkRepository) : super(HomePageInitial()) {
    on<FetchArtworkEvent>(
        (FetchArtworkEvent event, Emitter<FetchArtworkState> emit) async {
      if (event is CallArtworkAPI) {
        emit(HomePageLoading());

        Box<List<Artwork>> cacheData = Hive.box<List<Artwork>>('cacheBox');

        List<Artwork>? cachedList = cacheData.get('artworkList');

        log("cached List is $cachedList");

        Either<AppException, List<Artwork>> allArtworks =
            await artworkRepository.fetchArtworkFromApi(artworkApi);

        allArtworks.fold((failure) => emit(HomePageError(failure)), (artList) {
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
