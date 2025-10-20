import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/feature/home/mixin/home_view_mixin.dart';
import 'package:weather_app/feature/home/viewmodel/home_view_model.dart';
import 'package:weather_app/feature/home/viewmodel/state/home_state.dart';
import 'package:weather_app/product/state/base/base_state.dart';
import 'package:weather_app/product/utility/enum/icon_enum.dart';
import 'package:weather_app/product/utility/product_string_manager.dart';

part '../part_of/home_part_of.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeViewModel,
      child: Scaffold(
        appBar: _HomeAppbar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeViewModel.changeLoading();
          },
        ),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                child: (weatherModel?.weather?.first.icon != null)
                    ? getWeatherIcon(weatherModel!.weather!.first.icon)
                    : const Center(
                        child: Text(
                          ProductStringManager.unknow,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
              ),
            ),

            /// deniz apiden veriler geliyor ya aslan kardesim  ben assagiya textlere yazdim bak bunlari alarak benim sayfamdakine benzer bir stasarimda bulun
            /// Hava Durumu aciklamasi
            Text(
              weatherModel?.weather?.first.description ??
                  ProductStringManager.unknow,
            ),

            /// EN Yuksek sicaklik
            Row(
              children: [
                Text('Max Temp'),
                Text(
                  weatherModel?.main?.tempMax.toString() ??
                      ProductStringManager.unknow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
