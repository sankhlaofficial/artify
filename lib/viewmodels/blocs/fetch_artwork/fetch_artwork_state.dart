part of 'fetch_artwork_bloc.dart';

@immutable
abstract class FetchArtworkState {}

class HomePageInitial extends FetchArtworkState {}

class HomePageLoading extends FetchArtworkState {}

class HomePageSuccess extends FetchArtworkState {
  final List<Artwork> artList;

  final List<String> filterList;

  HomePageSuccess(this.artList, this.filterList);
}

class HomePageError extends FetchArtworkState {
  final AppException appException;

  HomePageError(this.appException);
}
