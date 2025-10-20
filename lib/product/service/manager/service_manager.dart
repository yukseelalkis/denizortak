import 'package:dio/dio.dart';
import 'package:weather_app/product/init/config/app_enviroment.dart';

final class ServiceManager {
  late final Dio dio;
  static final ServiceManager _instance = ServiceManager.base();

  factory ServiceManager() => _instance;

  ServiceManager.base() {
    final baseOptions = BaseOptions(
      baseUrl: AppEnvironmentItems.baseUrl.value,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      validateStatus: (status) =>
          status != null &&
          ((status >= 200 && status <= 399) ||
              status == 401 ||
              status == 404 ||
              status == 409),
    );
    dio = Dio(baseOptions);
  }
}
