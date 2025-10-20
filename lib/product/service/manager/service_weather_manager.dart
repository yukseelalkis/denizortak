import 'dart:io';
import 'package:gen/gen.dart';
import 'package:weather_app/product/init/config/app_enviroment.dart';
import 'package:weather_app/product/state/container/product_state_item.dart';

final class ServiceWeatherManager {
  static final ServiceWeatherManager instance =
      ServiceWeatherManager._internal();
  ServiceWeatherManager._internal();

  final _dio = ProductStateItem.serviceManager.dio;

  Future<WeatherModel?> fetchWeather(String city) async {
    final response = await _dio.get(
      '$city&appid=${AppEnvironmentItems.apiKey.value}',
    );
    try {
      if (response.statusCode == HttpStatus.ok) {
        return WeatherModel.fromJson(response.data);
      }
    } catch (e) {}
  }
}
