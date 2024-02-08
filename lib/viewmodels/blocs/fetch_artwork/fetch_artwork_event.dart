part of 'fetch_artwork_bloc.dart';

@immutable
abstract class FetchArtworkEvent {}

class CallArtworkAPI extends FetchArtworkEvent {}
