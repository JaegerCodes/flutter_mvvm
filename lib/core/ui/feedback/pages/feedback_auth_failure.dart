import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:partners/core/routing/routes.gr.dart';

@RoutePage()
class FeedbackAuthFailurePage extends StatelessWidget {
  const FeedbackAuthFailurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la página de inicio
            context.router.replace(const LoginRoute());
          },
          child: const Text('Error de autenticación'),
        ),
      ),
    );
  }
}
