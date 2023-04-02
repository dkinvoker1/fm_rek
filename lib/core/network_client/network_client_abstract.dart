import 'package:dio/dio.dart';

abstract class NetworkClientAbstract {
  Future<Response<T>> get<T>(String url);
}
