// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:partners/core/ui/feedback/pages/feedback_auth_failure.dart'
    as _i1;
import 'package:partners/core/ui/feedback/pages/feedback_generic_failure.dart'
    as _i2;
import 'package:partners/core/ui/feedback/pages/feedback_network_connection_failure.dart'
    as _i3;
import 'package:partners/core/ui/feedback/pages/feedback_sever_failure.dart'
    as _i4;
import 'package:partners/core/ui/feedback/route/feedback_view_routes.dart'
    as _i11;
import 'package:partners/feature/home_feature/home/presentation/home_page.dart'
    as _i5;
import 'package:partners/feature/matches_feature/matches/presentation/partner_matches.dart'
    as _i8;
import 'package:partners/feature/matches_feature/route/matches_routes.dart'
    as _i12;
import 'package:partners/feature/profile_feature/profile/presentation/partner_profile.dart'
    as _i9;
import 'package:partners/feature/profile_feature/route/profile_routes.dart'
    as _i13;
import 'package:partners/feature/search_partner_feature/partner_detail/presentation/partner_detail.dart'
    as _i7;
import 'package:partners/feature/search_partner_feature/partners_list/presentation/partners_list.dart'
    as _i10;
import 'package:partners/feature/search_partner_feature/route/search_partner_routes.dart'
    as _i14;
import 'package:partners/feature/user_identity_feature/login/login_page.dart'
    as _i6;
import 'package:partners/feature/user_identity_feature/route/user_identity_route.dart'
    as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    FeedbackAuthFailureRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FeedbackAuthFailurePage(),
      );
    },
    FeedbackGenericFailureRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FeedbackGenericFailurePage(),
      );
    },
    FeedbackNetworkConnectionFailureRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FeedbackNetworkConnectionFailurePage(),
      );
    },
    FeedbackServerFailureRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FeedbackServerFailurePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    PartnerDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PartnerDetailRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.PartnerDetailPage(
          key: args.key,
          item: args.item,
        ),
      );
    },
    PartnerMatchesRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PartnerMatchesPage(),
      );
    },
    PartnerProfileRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PartnerProfilePage(),
      );
    },
    PartnersListRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PartnersListPage(),
      );
    },
    RootFeedbackViews.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RootFeedbackViews(),
      );
    },
    RootMatches.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RootMatches(),
      );
    },
    RootProfile.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.RootProfile(),
      );
    },
    RootSearchPartners.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RootSearchPartners(),
      );
    },
    RootUserIdentity.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RootUserIdentity(),
      );
    },
  };
}

/// generated route for
/// [_i1.FeedbackAuthFailurePage]
class FeedbackAuthFailureRoute extends _i16.PageRouteInfo<void> {
  const FeedbackAuthFailureRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FeedbackAuthFailureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedbackAuthFailureRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FeedbackGenericFailurePage]
class FeedbackGenericFailureRoute extends _i16.PageRouteInfo<void> {
  const FeedbackGenericFailureRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FeedbackGenericFailureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedbackGenericFailureRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeedbackNetworkConnectionFailurePage]
class FeedbackNetworkConnectionFailureRoute extends _i16.PageRouteInfo<void> {
  const FeedbackNetworkConnectionFailureRoute(
      {List<_i16.PageRouteInfo>? children})
      : super(
          FeedbackNetworkConnectionFailureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedbackNetworkConnectionFailureRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FeedbackServerFailurePage]
class FeedbackServerFailureRoute extends _i16.PageRouteInfo<void> {
  const FeedbackServerFailureRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FeedbackServerFailureRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedbackServerFailureRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PartnerDetailPage]
class PartnerDetailRoute extends _i16.PageRouteInfo<PartnerDetailRouteArgs> {
  PartnerDetailRoute({
    _i17.Key? key,
    required String item,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          PartnerDetailRoute.name,
          args: PartnerDetailRouteArgs(
            key: key,
            item: item,
          ),
          initialChildren: children,
        );

  static const String name = 'PartnerDetailRoute';

  static const _i16.PageInfo<PartnerDetailRouteArgs> page =
      _i16.PageInfo<PartnerDetailRouteArgs>(name);
}

class PartnerDetailRouteArgs {
  const PartnerDetailRouteArgs({
    this.key,
    required this.item,
  });

  final _i17.Key? key;

  final String item;

  @override
  String toString() {
    return 'PartnerDetailRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i8.PartnerMatchesPage]
class PartnerMatchesRoute extends _i16.PageRouteInfo<void> {
  const PartnerMatchesRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PartnerMatchesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartnerMatchesRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PartnerProfilePage]
class PartnerProfileRoute extends _i16.PageRouteInfo<void> {
  const PartnerProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PartnerProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartnerProfileRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PartnersListPage]
class PartnersListRoute extends _i16.PageRouteInfo<void> {
  const PartnersListRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PartnersListRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartnersListRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RootFeedbackViews]
class RootFeedbackViews extends _i16.PageRouteInfo<void> {
  const RootFeedbackViews({List<_i16.PageRouteInfo>? children})
      : super(
          RootFeedbackViews.name,
          initialChildren: children,
        );

  static const String name = 'RootFeedbackViews';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RootMatches]
class RootMatches extends _i16.PageRouteInfo<void> {
  const RootMatches({List<_i16.PageRouteInfo>? children})
      : super(
          RootMatches.name,
          initialChildren: children,
        );

  static const String name = 'RootMatches';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RootProfile]
class RootProfile extends _i16.PageRouteInfo<void> {
  const RootProfile({List<_i16.PageRouteInfo>? children})
      : super(
          RootProfile.name,
          initialChildren: children,
        );

  static const String name = 'RootProfile';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.RootSearchPartners]
class RootSearchPartners extends _i16.PageRouteInfo<void> {
  const RootSearchPartners({List<_i16.PageRouteInfo>? children})
      : super(
          RootSearchPartners.name,
          initialChildren: children,
        );

  static const String name = 'RootSearchPartners';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.RootUserIdentity]
class RootUserIdentity extends _i16.PageRouteInfo<void> {
  const RootUserIdentity({List<_i16.PageRouteInfo>? children})
      : super(
          RootUserIdentity.name,
          initialChildren: children,
        );

  static const String name = 'RootUserIdentity';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
