import 'package:artify/models/artwork.dart';
import 'package:artify/models/services/art_service.dart';
import 'package:artify/models/services/base_service.dart';

class ArtworkRepository {
  final BaseService _artService = ArtService();
  Future<List<Artwork>> fetchArtList(String value) async {
    dynamic response = await _artService.getResponse(value);
    final jsonData = response['results'] as List;
    List<Artwork> artList =
        jsonData.map((tagJson) => Artwork.fromJson(tagJson)).toList();
    return artList;
  }
}
