import 'package:dio/dio.dart';

class AuthenticationInterceptor extends InterceptorsWrapper {
  bool isScrapping = false;
  String token = "";
  String otp = "";

  AuthenticationInterceptor({bool isScrapping: false, this.token, this.otp}) {
    this.isScrapping = isScrapping;
  }

  @override
  Future onResponse(Response response) {
    // TODO: implement onResponse
    return super.onResponse(response);
  }
}
