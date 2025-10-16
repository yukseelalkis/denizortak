import 'dart:io';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/product/init/config/app_enviroment.dart';

final class ServiceWeatherManager {
  late String _baseUrl;
  late Dio _dio;

  ServiceWeatherManager._() {
    _baseUrl = AppEnvironmentItems.baseUrl.value;
    final baseOptions = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
      validateStatus: (status) =>
          status != null &&
          ((status >= 200 && status <= 399) ||
              status == 401 ||
              status == 404 ||
              status == 409),
    );
    _dio = Dio(baseOptions);
  }
  static ServiceWeatherManager instance = ServiceWeatherManager._();

  // daha iyisine bakilacak
  Future<void> fetchWeather(String city) async {
    final response = await _dio.get(
      '$city&appid=${AppEnvironmentItems.apiKey.value}',
    );
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      final temp = data['main']['temp'] - 273.15;
      final minTemp = data['main']['temp_min'] - 273.15;
      final maxTemp = data['main']['temp_max'] - 273.15;
      final sunrise = DateTime.fromMillisecondsSinceEpoch(
        data['sys']['sunrise'] * 1000,
      );
      final sunset = DateTime.fromMillisecondsSinceEpoch(
        data['sys']['sunset'] * 1000,
      );
      final icon = data['weather'][0]['icon'];
      final desc = data['weather'][0]['description'];
      final name = data['name'];

      print('Şehir: $name');
      print('Durum: $desc');
      print('Sıcaklık: ${temp.toStringAsFixed(1)}°C');
      print(
        'Min: ${minTemp.toStringAsFixed(1)}°C, Max: ${maxTemp.toStringAsFixed(1)}°C',
      );
      print('Gündoğumu: ${DateFormat.Hm().format(sunrise)}');
      print('Günbatımı: ${DateFormat.Hm().format(sunset)}');
      print('İkon: $icon');
    }
  }
}
