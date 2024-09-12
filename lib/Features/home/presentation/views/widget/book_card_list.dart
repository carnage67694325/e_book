import 'package:e_book/Features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:e_book/core/utils/widgets/error_text.dart';
import 'package:e_book/core/utils/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookCardList extends StatelessWidget {
  const BookCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsViewRoute,
                        extra: state.books[index],
                      );
                    },
                    child: BookCard(
                        urlImage: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            AssetsData.comicCover),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorText(errMessage: state.errMessage);
        } else {
          return const Loading();
        }
      },
    );
  }
}
