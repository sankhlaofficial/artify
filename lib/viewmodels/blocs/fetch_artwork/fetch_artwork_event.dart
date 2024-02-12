part of 'fetch_artwork_bloc.dart';

@immutable
abstract class FetchArtworkEvent {}

class CallArtworkAPI extends FetchArtworkEvent {}

class ApplyFilters extends FetchArtworkEvent {
  final Set<String> filtersApplied;

  ApplyFilters({this.filtersApplied = const {}});
}

class SearchArtwork extends FetchArtworkEvent {
  final String query;

  SearchArtwork({required this.query});
}
