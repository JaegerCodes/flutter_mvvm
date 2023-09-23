import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FeedbackGenericFailurePage extends StatelessWidget {
  const FeedbackGenericFailurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text('Error genérico'),
        ),
      ),
    );
  }
}
