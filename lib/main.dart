import 'package:e_book/Features/home/data/repos/home_repo_impl.dart';
import 'package:e_book/Features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:e_book/Features/home/presentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/service_locator.dart';
import 'package:e_book/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLoactor();
  Bloc.observer = SimpleBlocObserver();
  runApp(const EBook());
}

class EBook extends StatelessWidget {
  const EBook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewsetBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
