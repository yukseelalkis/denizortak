import 'package:flutter/widgets.dart'; // veya material.dart
import 'package:gen/gen.dart';

/// API'den gelen "10d", "01n" gibi kodu alır,
/// FlutterGen'deki AssetGenImage.image() ile Widget döner.
Widget getWeatherIcon(String? iconCode) {
  final code = (iconCode?.trim().toLowerCase() ?? '01d');

  switch (code) {
    case '01d':
      return Assets.images.a10d.image(package: 'gen');
    case '01n':
      return Assets.images.a01n.image(package: 'gen');
    case '02d':
      return Assets.images.a02d.image(package: 'gen');
    case '02n':
      return Assets.images.a02n.image(package: 'gen');
    case '03d':
      return Assets.images.a03d.image(package: 'gen');
    case '04d':
      return Assets.images.a04d.image(package: 'gen');
    case '09d':
      return Assets.images.a09d.image(package: 'gen');
    case '10d':
      return Assets.images.a10d.image(package: 'gen');

    case '11d':
      return Assets.images.a11d.image(package: 'gen');
    case '13d':
      return Assets.images.a13d.image(package: 'gen');
    case '50d':
      return Assets.images.a50d.image(package: 'gen');
    default:
      // bilinmeyen kodlarda varsayılan
      return Assets.images.a10d.image(package: 'gen');
  }
}
