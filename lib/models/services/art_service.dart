import 'dart:developer';
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
      log("initial response is ${response.data['data']}");
      responseJson = response.data;
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } catch (error) {
      throw UnknownException(error.toString());
    }
    return responseJson;
  }
}
