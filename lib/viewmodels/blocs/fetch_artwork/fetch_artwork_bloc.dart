import 'dart:developer';

import 'package:artify/models/api/app_exception.dart';
import 'package:artify/models/artwork.dart';
import 'package:artify/models/artwork_repository.dart';
import 'package:artify/models/constants/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_artwork_event.dart';
part 'fetch_artwork_state.dart';

class FetchArtworkBloc extends Bloc<FetchArtworkEvent, FetchArtworkState> {
  final ArtworkRepository artworkRepository;

  FetchArtworkBloc(this.artworkRepository) : super(HomePageInitial()) {
    on<FetchArtworkEvent>((event, emit) async {
      if (event is CallArtworkAPI) {
        emit(HomePageLoading());

        Either<AppException, List<Artwork>> allArtworks =
            await artworkRepository.fetchArtworkFromApi(artworkApi);

        log('all Artworks are $allArtworks');

        allArtworks.fold((failure) => emit(HomePageError(failure)),
            (artList) => emit(HomePageSuccess(artList)));
      }
    });
  }
}
