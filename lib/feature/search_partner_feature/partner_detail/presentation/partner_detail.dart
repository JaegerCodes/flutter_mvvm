import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PartnerDetailPage extends StatelessWidget {
  final String item;

  const PartnerDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 500,
        itemBuilder: (context, index) => ListTile(
          title: Text(item),
          onTap: () {
            context.router.popUntilRoot();
          },
        ),
      ),
    );
  }
}