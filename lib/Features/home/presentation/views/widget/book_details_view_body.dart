import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/view_models/similiar_books_cubit/similar_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_details_section.dart';
import 'package:e_book/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widget/similar_books_section.dart';
import 'package:e_book/core/utils/widgets/books_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBodys extends StatelessWidget {
  const BookDetailsViewBodys({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const CustomBookDetailsAppBar(),
                    BookDetailsSection(book: book),
                    const SizedBox(
                      height: 37,
                    ),
                    BooksAction(
                      book: book,
                    ),
                    const Expanded(
                      child: SizedBox(
                        height: 49,
                      ),
                    ),
                    const SimilarBooksSection(),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
