import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:partners/core/routing/routes.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la página de inicio
            context.router.replace(const HomeRoute());
          },
          child: const Text('Iniciar sesión'),
        ),
      ),
    );
  }
}