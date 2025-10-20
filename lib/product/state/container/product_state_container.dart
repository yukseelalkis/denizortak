import 'package:get_it/get_it.dart';
import 'package:weather_app/product/service/manager/service_manager.dart';

final class ProductContainer {
  ProductContainer._();

  static final _instance = GetIt.I;

  static void setup() {
    _instance.registerSingleton<ServiceManager>(ServiceManager());
  }

  static T read<T extends Object>() => _instance<T>();
}
