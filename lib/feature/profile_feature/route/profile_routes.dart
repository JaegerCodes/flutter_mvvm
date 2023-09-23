import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RootProfile extends StatelessWidget {
  const RootProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
