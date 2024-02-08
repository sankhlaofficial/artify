abstract class BaseService {
  final String apiBaseUrl = "https://itunes.apple.com/search?term=";

  Future<dynamic> getResponse(String url);
}
