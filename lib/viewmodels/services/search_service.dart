import 'package:artify/models/entities/artwork.dart';

class SearchServices {
  List<Artwork> filterSearchResults(
      String query, List<Artwork> allDisplayedArtworks) {
    List<Artwork> filterSearchArtworks = [];

    for (var artwork in allDisplayedArtworks) {
      if (artwork.title.toLowerCase().contains(query.toLowerCase()) ||
          artwork.author.toLowerCase().contains(query.toLowerCase())) {
        filterSearchArtworks.add(artwork);
      }
    }

    for (var element in filterSearchArtworks) {}

    return query.isEmpty ? allDisplayedArtworks : filterSearchArtworks;
  }
}
