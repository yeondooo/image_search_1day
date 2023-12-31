import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_1day/data/model/photo.dart';
import 'package:image_search_1day/ui/detail/detail_screen.dart';
import 'package:image_search_1day/ui/main/main_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'detail',
          builder: (BuildContext context, GoRouterState state) {
            final photo = state.extra as Photo;
            return DetailScreen(photo: photo);
          },
        ),
      ],
    ),
  ],
);
