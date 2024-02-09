import 'package:artify/models/constants/index.dart';
import 'package:artify/models/helpers/helpers.dart';

class Artwork {
  final int id;
  final String title;
  final String description;
  final String author;
  final ArtworkImage artworkImage;
  final String category;

  final String imageApiUrl;

  Artwork({
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.artworkImage,
    required this.category,
    required this.imageApiUrl,
  });

  factory Artwork.fromJson(
      {required String imageApiUrl, required Map<String, dynamic> json}) {
    return Artwork(
        id: json['id'],
        title: json['title'] ?? '',
        description: json['place_of_origin'] ?? '',
        author: json['artist_title'] ?? '',
        artworkImage: ArtworkImage.fromImageId(
            imageId: json['image_id'],
            imageApiUrl: imageApiUrl,
            imageDimensionString: iiifDimensionString),

        // json['image_id'] ?? '',
        category: Helpers.capitalize(json['classification_title'] ?? ''),
        imageApiUrl: imageApiUrl);
  }
}

class ArtworkImage {
  final String imageDisplayUrl;
  final String imageApiUrl;
  final String imageDimensionString;

  ArtworkImage(
      {required this.imageDisplayUrl,
      required this.imageApiUrl,
      required this.imageDimensionString});

  factory ArtworkImage.fromImageId(
      {required String imageId,
      required String imageApiUrl,
      required String imageDimensionString}) {
    return ArtworkImage(
        imageDisplayUrl: '$imageApiUrl/$imageId/$imageDimensionString',
        imageApiUrl: imageApiUrl,
        imageDimensionString: imageDimensionString);
  }
}
