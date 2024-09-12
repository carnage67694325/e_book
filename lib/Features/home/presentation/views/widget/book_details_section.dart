import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_rating.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 33.2,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.20),
          child: BookCard(
            urlImage:
                book.volumeInfo?.imageLinks?.thumbnail ?? AssetsData.comicCover,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          book.volumeInfo?.title ?? 'book name',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo?.authors?[0] ?? 'unkown',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          rating: 0,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
