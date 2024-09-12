import 'package:e_book/Features/home/presentation/view_models/similiar_books_cubit/similar_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:e_book/core/utils/widgets/error_text.dart';
import 'package:e_book/core/utils/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: BookCard(
                        urlImage: state.books[index].volumeInfo?.imageLinks
                                ?.thumbnail ??
                            AssetsData.comicCover,
                      ),
                    );
                  }));
        } else if (state is SimilarBooksFailure) {
          return ErrorText(errMessage: state.errMessage);
        } else {
          return const Loading();
        }
      },
    );
  }
}
