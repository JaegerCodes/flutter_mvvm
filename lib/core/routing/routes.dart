import 'package:auto_route/auto_route.dart';
import 'package:partners/core/routing/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: LoginRoute.page,
      initial: true
    ),
    AutoRoute(
      page: HomeRoute.page,
      children: [
        AutoRoute(
          page: RootSearchPartners.page,
          children: [
            AutoRoute(page: PartnersListRoute.page, initial: true),
            AutoRoute(page: PartnerDetailRoute.page),
          ],
        ),
        AutoRoute(
          page: RootMatches.page,
          children: [
            AutoRoute(page: PartnerMatchesRoute.page, initial: true)
          ],
        ),
        AutoRoute(
          page: RootProfile.page,
          children: [
            AutoRoute(page: PartnerProfileRoute.page, initial: true)
          ],
        ),
      ],
    ),
    AutoRoute(page: FeedbackAuthFailureRoute.page),
    AutoRoute(page: FeedbackGenericFailureRoute.page),
    AutoRoute(page: FeedbackNetworkConnectionFailureRoute.page),
    AutoRoute(page: FeedbackServerFailureRoute.page),
  ];
}
