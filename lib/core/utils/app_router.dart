import 'package:e_book/Features/home/presentation/views/book_details_view.dart';
import 'package:e_book/Features/home/presentation/views/home_view.dart';
import 'package:e_book/Features/splash/presentation/views/splash_view.dart';
import 'package:e_book/core/utils/animation/transition_animation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsRoute = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        pageBuilder: (context, state) {
          return TransitionAnimation.circularTransitionAnimation(state,
              route: const HomeView());
        },
      ),
      GoRoute(
        path: kBookDetailsRoute,
        pageBuilder: (context, state) {
          return TransitionAnimation.zoomInAnimatition(state,
              route: const BookDetailsView());
        },
      ),
    ],
  );
}
