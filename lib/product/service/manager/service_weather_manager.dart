import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
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
  Future<WeatherModel?> fetchWeather(String city) async {
    final response = await _dio.get(
      '$city&appid=${AppEnvironmentItems.apiKey.value}',
    );
    try {
      if (response.statusCode == HttpStatus.ok) {
        return WeatherModel.fromJson(response.data);
      }
    } catch (e) {
      
    }
  }
}
