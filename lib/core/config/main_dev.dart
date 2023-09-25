
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/app.dart';
import 'package:partners/core/config/app_config.dart';
import 'package:partners/core/database/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Asegúrate de que Flutter esté inicializado
  final database = await DatabaseInitializer.initDatabase();

  runApp(
    ProviderScope(
      overrides: [
        appDatabaseProvider.overrideWithValue(database),
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