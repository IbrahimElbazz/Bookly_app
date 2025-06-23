import 'package:bookly_app/Features/home/presentation/views/home.dart';
import 'package:bookly_app/Features/search/presintation/views/search.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_veiw.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_detailes.dart';

abstract class AppRouter {
  static const homeView = '/Home';
  static const homeDetailsView = '/homeDetailsView';
  static const searchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchPage(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: homeDetailsView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const BookDetailsPage(),
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
