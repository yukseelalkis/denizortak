import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:weather_app/feature/home/mixin/home_view_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: fetchWeather),
      body: Column(
        children: [
          /******Deniz ASSET KULLANMAN ICIN ORNEK BIRAKTIM BURADA SENDEN 
           * SERVISTEN GELEN VERI ILE BIR TANE CARD YA DA LIST TILE CANIN NE ISTERSE BIR TASARIM YAP */

          /// ORNEK ASSETS KULLANIMI
          // ListTile(
          //   leading: Assets.images.a01n.image(
          //     package: 'gen', // <-- ŞART
          //   ),
          // ),
        ],
      ),
    );
  }
}

// asset kullanmak icin  ornek
