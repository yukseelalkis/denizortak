import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:weather_app/feature/home/view/home_view.dart';
import 'package:weather_app/product/service/manager/service_weather_manager.dart';

mixin HomeViewMixin on State<HomeView> {
  WeatherModel? weatherModel;
  final ServiceWeatherManager serviceWeatherManager =
      ServiceWeatherManager.instance;
  @override
  void initState() {
    super.initState();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    final item = await serviceWeatherManager.fetchWeather('Hatay');
    print(item?.main?.temp ?? '');
    if (item != null) {
      final temp = item.main?.temp;
      final desc = item.weather?.first.description;
      final icon = item.weather?.first.icon;
      final city = item.name;

      print('Şehir: $city');
      print('Durum: $desc');
      print('Sıcaklık: ${temp?.toStringAsFixed(1)} °C');
      print('İkon kodu: $icon');
    } else {
      /// BUrada SnackBar yapilak
      print('Veri alınamadı');
    }
  }
}
