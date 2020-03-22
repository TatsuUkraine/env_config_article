import 'dart:io';

class EnvConfig {
  static const String ENV = 'development';

  static final String API_URL =
      '${Platform.isAndroid ? 'http://10.0.0.1' : 'http://localhost'}';
}
