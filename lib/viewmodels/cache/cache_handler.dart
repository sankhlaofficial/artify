import 'package:artify/models/entities/artwork.dart';
import 'package:hive/hive.dart';

class CacheHandler {
  Future<List<Artwork>> getCachedData() async {
    var cacheBox = await Hive.openBox<List>('cacheBox');

    var cachedList =
        cacheBox.get('artworkList', defaultValue: [])?.cast<Artwork>();

    return cachedList ?? [];
  }

  Future<void> saveDataToCache(List<Artwork> artworkList) async {
    var cacheBox = await Hive.openBox<List>('cacheBox');

    cacheBox.put('artworkList', artworkList);
  }
}
