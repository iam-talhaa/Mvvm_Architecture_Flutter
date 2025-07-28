import 'package:mvvm_architectute_flutter_/data/Network/BaseApiServices.dart';
import 'package:mvvm_architectute_flutter_/data/Network/NetworkApiServices.dart';
import 'package:mvvm_architectute_flutter_/res/app_url.dart';

class Auth_repository {
  Baseapiservices _apiReponse = Networkapiservices();

  Future<dynamic> loginApi(String data) async {
    try {
      final response = await _apiReponse.getPostApiResponse(
        AppUrl.LoginEndpoint,
        data,
      );
      return response;
    } catch (e) {
      throw e;
    }
  }
}
