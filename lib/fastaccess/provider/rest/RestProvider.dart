import 'package:dio/dio.dart';
import 'package:fasthub/fastaccess/provider/rest/interceptors/AuthenticationInterceptor.dart';
import 'package:fasthub/fastaccess/provider/rest/interceptors/ContentTypeInterceptor.dart';
import 'package:fasthub/fastaccess/provider/rest/interceptors/PaginationInterceptor.dart';

class RestProvider {
  static Dio dio;

  static void provideDio() {
    dio = Dio();
    dio.interceptors.addAll(<Interceptor>{
      AuthenticationInterceptor(),
      PaginationInterceptor(),
      ContentTypeInterceptor(),
    });
  }

  static void clearDio() {
    dio = null;
  }
}
