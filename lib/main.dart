import 'package:flutter/material.dart';
import 'package:weather_app/feature/home/view/home_view.dart';
import 'package:weather_app/product/init/config/app_enviroment.dart';
import 'package:weather_app/product/state/container/product_state_container.dart';

void main() {
  AppEnviroment.general();
  ProductContainer.setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const HomeView(),
    );
  }
}
