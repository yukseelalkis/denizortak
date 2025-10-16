import 'package:gen/gen.dart';

final class AppEnviroment {
  static late final AppConfiguration _config;
  AppEnviroment.setup({required AppConfiguration config}) {
    _config = config;
  }
  AppEnviroment.general() {
    // _config = kDebugMode ? DevEnv() : ProdEnv();
    _config = DevEnv();
  }
}

enum AppEnvironmentItems {
  baseUrl,
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnviroment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnviroment._config.apiKey;
      }
    } catch (e) {
      throw Exception('Environment variable is not found.');
    }
  }
}
