import 'dart:convert';
import 'dart:io';

import 'package:mvvm_architectute_flutter_/data/AppException.dart';
import 'package:mvvm_architectute_flutter_/data/Network/BaseApiServices.dart';
import 'package:http/http.dart' as http;

class Networkapiservices extends Baseapiservices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("NO internet Connection");
    }

    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: data);
      return responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection ");
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 404:
        throw UNAuthorisedException("UnAuthorize Access");
      default:
        throw FetchDataException(
          'Error Occured During Fetching response from Netork' +
              'Status COde  ' +
              response.statusCode.toString(),
        );
    }
  }
}
