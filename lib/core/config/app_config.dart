import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AppEnvironment { DEV, STAGE, PROD }

class EnvironmentConfig {
  final AppEnvironment appEnvironment;
  final String? appName;
  final String? description;
  final String baseUrl;
  final ThemeData? themeData;

  EnvironmentConfig({
    required this.appEnvironment,
    this.appName,
    this.description,
    this.themeData,
  }) : baseUrl = _getBaseUrl(appEnvironment);

  static String _getBaseUrl(AppEnvironment environment) {
    switch (environment) {
      case AppEnvironment.DEV:
        return 'http://192.168.1.47:8080';
      case AppEnvironment.STAGE:
        return 'http://stage.example.com';
      case AppEnvironment.PROD:
        return 'http://prod.example.com';
      default:
        return 'http://default.example.com';
    }
  }
}

final environmentConfigProvider = Provider<EnvironmentConfig>((ref) {
  return EnvironmentConfig(appEnvironment: AppEnvironment.DEV);
});





