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
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: ListTile(
              leading: Assets.images.a02d.image(
                package: 'gen',
                width: 50,
                height: 50,
              ),
              title: Text('Hava Durumu Açık'),
              subtitle: Text('Hatay / 20°C'),
            ),
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: ListTile(
              leading: Assets.images.a03d.image(
                package: 'gen',
                width: 50,
                height: 50,
              ),
              title: Text('Hava Durumu Bulutlu'),
              subtitle: Text('Gaziantep / 17°C'),
            ),
          ),
        ],
      ),
    );
  }
}
