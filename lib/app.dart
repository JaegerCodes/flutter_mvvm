import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/config/app_config.dart';
import 'package:partners/core/routing/routes.dart';

class App extends ConsumerWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(environmentConfigProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: config.appName ?? 'Default App Name',
      theme: config.themeData ?? ThemeData(),
    );
  }
}