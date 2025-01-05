import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/search/presintation/views/search.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_veiw.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_detailes.dart';

abstract class app_router {
  static const homeView = '/Home';
  static const homeDetailsView = '/Home_detailes_view';
  static const searchVeiw = '/searech_veiw';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splashPage(),
      ),
      GoRoute(
        path: searchVeiw,
        builder: (context, state) => const searchPage(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const homePage(),
      ),
      GoRoute(
        path: homeDetailsView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const bookDetailsPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurvedAnimation(
                  parent: animation,
                  curve: Curves.bounceInOut,
                ),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
