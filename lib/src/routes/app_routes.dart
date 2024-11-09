import 'package:basic_structure/src/modules/home/view/home_view.dart';
import 'package:basic_structure/src/modules/user/view/user_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const UserScreen();
      },
    ),
  ],
);
