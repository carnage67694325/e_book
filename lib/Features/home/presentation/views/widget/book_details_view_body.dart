import 'package:e_book/Features/home/presentation/views/widget/book_details_section.dart';
import 'package:e_book/Features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:e_book/Features/home/presentation/views/widget/similar_books_section.dart';
import 'package:e_book/core/utils/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBodys extends StatelessWidget {
  const BookDetailsViewBodys({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(
                  height: 37,
                ),
                BooksAction(),
                Expanded(
                  child: SizedBox(
                    height: 49,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
