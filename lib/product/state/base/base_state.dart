import 'package:flutter/material.dart';
import 'package:weather_app/product/service/manager/service_manager.dart';
import 'package:weather_app/product/state/container/product_state_item.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  //DI dan cektigimiz yer

  ServiceManager get serviceManager => ProductStateItem.serviceManager;
  // injection yaptigimiz kisimlar bunlar
}
