import 'package:artify/models/api/app_exception.dart';
import 'package:artify/models/artwork.dart';
import 'package:artify/models/services/art_service.dart';
import 'package:artify/models/services/base_service.dart';
import 'package:dartz/dartz.dart';

class ArtworkRepository {
  final BaseService _artService = ArtService();
  Future<List<Artwork>> fetchArtList(String value) async {
    try {
      dynamic response = await _artService.getResponse(value);
      final jsonData = response['results'] as List;
      if (response.statusCode == 200) {
        try {
          List<Artwork> artList =
              jsonData.map((tagJson) => Artwork.fromJson(tagJson)).toList();
          return artList;
        } on Exception {
          throw InvalidDataException();
        }
      } else {
        throw FetchDataException();
      }
    } catch (error) {
      if (error is BadRequestException || error is UnauthorisedException) {
        rethrow;
      } else {
        throw FetchDataException();
      }
    }
  }

  Future<Either<AppException, List<Artwork>>> fetchArtworkFromApi(
      String value) async {
    try {
      List<Artwork> artwork = await fetchArtList(value);

      return Right(artwork);
    } on InvalidDataException {
      return Left(InvalidDataException());
    } on FetchDataException {
      return Left(FetchDataException());
    } on BadRequestException {
      return Left(BadRequestException());
    } on UnauthorisedException {
      return Left(UnauthorisedException());
    }
  }
}
