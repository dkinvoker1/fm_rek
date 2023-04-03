// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/future_mind_strange_mind/presentation/pages/strange_mind_detail_page.dart'
    as _i2;
import '../../features/future_mind_strange_mind/presentation/pages/strange_mind_list_page.dart'
    as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    StrangeMindListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.StrangeMindListPage(),
      );
    },
    StrangeMindDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StrangeMindDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.StrangeMindDetailPage(
          key: args.key,
          detailsUrl: args.detailsUrl,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          StrangeMindListRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          StrangeMindDetailRoute.name,
          path: '/strange-mind-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.StrangeMindListPage]
class StrangeMindListRoute extends _i3.PageRouteInfo<void> {
  const StrangeMindListRoute()
      : super(
          StrangeMindListRoute.name,
          path: '/',
        );

  static const String name = 'StrangeMindListRoute';
}

/// generated route for
/// [_i2.StrangeMindDetailPage]
class StrangeMindDetailRoute
    extends _i3.PageRouteInfo<StrangeMindDetailRouteArgs> {
  StrangeMindDetailRoute({
    _i4.Key? key,
    required String detailsUrl,
  }) : super(
          StrangeMindDetailRoute.name,
          path: '/strange-mind-detail-page',
          args: StrangeMindDetailRouteArgs(
            key: key,
            detailsUrl: detailsUrl,
          ),
        );

  static const String name = 'StrangeMindDetailRoute';
}

class StrangeMindDetailRouteArgs {
  const StrangeMindDetailRouteArgs({
    this.key,
    required this.detailsUrl,
  });

  final _i4.Key? key;

  final String detailsUrl;

  @override
  String toString() {
    return 'StrangeMindDetailRouteArgs{key: $key, detailsUrl: $detailsUrl}';
  }
}
