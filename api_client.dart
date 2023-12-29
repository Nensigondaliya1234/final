import 'package:food_delivary_app/utils/app_consts.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  String? token;
  final String appBaseUrl;

  // ignore: unused_field
  late Map<String, String> _mainHeader;
  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeader = {
      'content-type': 'application/json; charset=UTF-8',
      'Authorization': 'bearer $token',
    };
  }
  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
