import 'dart:io';

import 'package:artify/models/api/app_exception.dart';
import 'package:artify/models/services/base_service.dart';
import 'package:dio/dio.dart';

class ArtService extends BaseService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await Dio().get(url);
      responseJson = response;
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
}
