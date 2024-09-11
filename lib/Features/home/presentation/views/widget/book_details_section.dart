import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_rating.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

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
          child: const BookCard(
            urlImage:
                'https://media.printables.com/media/prints/550359/images/4421183_7c3ad661-3542-4a04-83ed-21466b813ff6/thumbs/inside/1280x960/png/baby-yoda-jedi-health.webp',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
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
