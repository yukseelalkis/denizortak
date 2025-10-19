import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:weather_app/feature/home/mixin/home_view_mixin.dart';

part '../part_of/home_part_of.dart';

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
      appBar: _CustomAppBar(),
      body: Column(children: [SizedBox(
        child: Assets.images.a01n.image(package: 'gen'))]),
    );
  }
}
