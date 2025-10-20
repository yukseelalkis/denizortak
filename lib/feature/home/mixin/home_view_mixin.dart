import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:weather_app/feature/home/view/home_view.dart';
import 'package:weather_app/feature/home/viewmodel/home_view_model.dart';
import 'package:weather_app/product/service/manager/service_weather_manager.dart';

mixin HomeViewMixin on State<HomeView> {
  late final HomeViewModel _homeViewModel;
  HomeViewModel get homeViewModel => _homeViewModel;

  WeatherModel? weatherModel; // Artık late yok
  final ServiceWeatherManager serviceWeatherManager =
      ServiceWeatherManager.instance;

  @override
  void initState() {
    super.initState();
    _homeViewModel = HomeViewModel();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    final result = await serviceWeatherManager.fetchWeather('Bodrum');

    if (!mounted) return;

    setState(() {
      weatherModel = result; // Field'ı güncelliyoruz
    });

    if (result != null) {
      final temp = result.main?.temp;
      final desc = result.weather?.first.description;
      final icon = result.weather?.first.icon;
      final city = result.name;

      debugPrint('Şehir: $city');
      debugPrint('Durum: $desc');
      debugPrint('Sıcaklık: ${temp?.toStringAsFixed(1)} °C');
      debugPrint('İkon kodu: $icon');
    } else {
      debugPrint('Veri alınamadı');
    }
  }

  // iconCode her zaman güncel, null-safe getter
  String? get iconCode => weatherModel?.weather?.first.icon;
}
