import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:flutter/material.dart';

class BookCardList extends StatelessWidget {
  const BookCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15),
            child: BookCard(),
          );
        },
      ),
    );
  }
}
