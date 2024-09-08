import 'package:e_book/Features/home/presentation/views/widget/similar_books_list.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You can also like'),
        SizedBox(
          height: 16,
        ),
        SimilarBooksList(),
      ],
    );
  }
}
