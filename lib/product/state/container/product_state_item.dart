// Glovbalde kullanacagimiz
import 'package:weather_app/product/service/manager/service_manager.dart';
import 'package:weather_app/product/state/container/product_state_container.dart';

final class ProductStateItem {
  const ProductStateItem._();

  // Projenin her yerinde kullancagimiz katmanlari vs buradas tanimlayabiliriz.
  static ServiceManager get serviceManager =>
      ProductContainer.read<ServiceManager>();

  /// ben burayi DI UYGUN YAPTIGIMDAN dolayi orada yaptigim degisikleri burada
  /// yapmam lazim
  ///
}
