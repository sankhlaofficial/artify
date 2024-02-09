part of 'fetch_artwork_bloc.dart';

@immutable
abstract class FetchArtworkState {
  final List<Artwork> artList;

  final List<Artwork> displayedArtList;

  final List<String> filterList;

  final Set<String> appliedFilterList;

  const FetchArtworkState(
      {this.artList = const [],
      this.filterList = const [],
      this.displayedArtList = const [],
      this.appliedFilterList = const {}});

  FetchArtworkState copyWith({
    List<Artwork>? artList,
    List<String>? filterList,
    Set<String>? appliedFilterList,
    List<Artwork>? displayedArtList,
  }) {
    return HomePageSuccess(
        artList: artList ?? this.artList,
        filterList: filterList ?? this.filterList,
        appliedFilterList: appliedFilterList ?? this.appliedFilterList,
        displayedArtList: displayedArtList ?? this.displayedArtList);
  }
}

class HomePageInitial extends FetchArtworkState {}

class HomePageLoading extends FetchArtworkState {}

class HomePageSuccess extends FetchArtworkState {
  const HomePageSuccess(
      {required super.artList,
      required super.filterList,
      required super.displayedArtList,
      super.appliedFilterList = const {}});
}

class HomePageError extends FetchArtworkState {
  final AppException appException;

  const HomePageError(this.appException);
}
