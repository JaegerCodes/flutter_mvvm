
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/app.dart';
import 'package:partners/core/config/app_config.dart';

void main() {
  runApp(
    ProviderScope(
      overrides: [
        environmentConfigProvider.overrideWithValue(
          EnvironmentConfig(
            appEnvironment: AppEnvironment.DEV,
            appName: 'Partners Dev',
            description: 'This is a Development version of Dev',
            themeData: ThemeData(
              scaffoldBackgroundColor: Colors.white,
            ),
          ),
        ),
      ],
      child: App(),
    ),
  );
}