import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repos/home_repo_impl.dart';
import 'package:e_book/Features/home/presentation/view_models/similiar_books_cubit/similar_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/book_details_view.dart';
import 'package:e_book/Features/home/presentation/views/home_view.dart';
import 'package:e_book/Features/search/data/repos/search_repo_impl.dart';
import 'package:e_book/Features/search/presentation/view_model/search_book_cubit/search_book_cubit.dart';
import 'package:e_book/Features/search/presentation/views/search_view.dart';
import 'package:e_book/Features/splash/presentation/views/splash_view.dart';
import 'package:e_book/core/utils/animation/transition_animation.dart';
import 'package:e_book/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeViewRoute = '/homeView';
  static const kBookDetailsViewRoute = '/bookDetailsView';
  static const kSearchViewRoute = '/searchView';

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
        path: kBookDetailsViewRoute,
        pageBuilder: (context, state) {
          return TransitionAnimation.slidingFromBottomAnimation(state,
              route: BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
                child: BookDetailsView(
                  book: state.extra as BookModel,
                ),
              ));
        },
      ),
      GoRoute(
        path: kSearchViewRoute,
        pageBuilder: (context, state) {
          return TransitionAnimation.slidingFromBottomAnimation(state,
              route: BlocProvider(
                create: (context) =>
                    SearchBookCubit(getIt.get<SearchRepoImpl>()),
                child: const SearchView(),
              ));
        },
      ),
    ],
  );
}
