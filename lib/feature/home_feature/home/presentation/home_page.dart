import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:partners/core/routing/routes.gr.dart';
import 'package:partners/feature/search_partner_feature/partners_list/presentation/viewmodel/quotes_viewmodel.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  int? _lastSelectedIndex;

  @override
  Widget build(BuildContext context) {

    return AutoTabsScaffold(
      routes: const [
        RootSearchPartners(),
        RootMatches(),
        RootProfile(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            if (_lastSelectedIndex == index) {
              navigateToRootOfItem(index, context);
            } else {
              tabsRouter.setActiveIndex(index);
            }
            _lastSelectedIndex = index;
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Matches'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Profile'),
          ],
        );
      },
    );
  }

  void navigateToRootOfItem(int index, BuildContext context) {
    switch (index) {
      case 0:
        ref.read(quotesNotifierProvider.notifier).fetchQuotes();
        context.navigateTo(const RootSearchPartners());
        break;
      case 1:
        context.navigateTo(const RootMatches());
        break;
      case 2:
        context.navigateTo(const RootProfile());
        break;
    }
  }
}