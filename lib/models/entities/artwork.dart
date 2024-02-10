import 'package:artify/models/constants/index.dart';
import 'package:artify/models/helpers/helpers.dart';
import 'package:hive/hive.dart';

part 'artwork.g.dart';

@HiveType(typeId: 0)
class Artwork {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String author;
  @HiveField(4)
  final ArtworkImage artworkImage;
  @HiveField(5)
  final String category;

  @HiveField(6)
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

@HiveType(typeId: 1)
class ArtworkImage {
  @HiveField(0)
  final String imageDisplayUrl;
  @HiveField(1)
  final String imageApiUrl;
  @HiveField(2)
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
