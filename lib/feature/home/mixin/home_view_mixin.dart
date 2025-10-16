import 'package:flutter/material.dart';
import 'package:weather_app/feature/home/view/home_view.dart';
import 'package:weather_app/product/service/manager/service_weather_manager.dart';

mixin HomeViewMixin on State<HomeView> {
  final ServiceWeatherManager serviceWeatherManager =
      ServiceWeatherManager.instance;

  Future<void> fetchWeather() {
    return serviceWeatherManager.fetchWeather('Hatay');
  }
}
