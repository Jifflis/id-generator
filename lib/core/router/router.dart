import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:id_generator/features/page_layout/page_layout.dart';

import '../constant/route_constants.dart';



class CustomNavigationHelper {
  static final CustomNavigationHelper _instance = CustomNavigationHelper._internal();

  static CustomNavigationHelper get instance => _instance;

  static late final GoRouter router;

  static final GlobalKey<NavigatorState> parentNavigatorKey = GlobalKey<NavigatorState>();

  BuildContext get context => router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser => router.routeInformationParser;

  factory CustomNavigationHelper() {
    return _instance;
  }

  CustomNavigationHelper._internal() {
    final routes = [
      // StatefulShellRoute.indexedStack(
      //   parentNavigatorKey: parentNavigatorKey,
      //   branches: const [],
      //   pageBuilder: (
      //     BuildContext context,
      //     GoRouterState state,
      //     StatefulNavigationShell navigationShell,
      //   ) {
      //     return getPage(
      //       child: PageMain(
      //         child: navigationShell,
      //       ),
      //       state: state,
      //     );
      //   },
      // ),
      GoRoute(
        path: AppRoute.splashScreen,
        pageBuilder: (context, state) {
          return getPage(
            child: const PageLayout(),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: AppRoute.splashScreen,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
    );
  }
}
