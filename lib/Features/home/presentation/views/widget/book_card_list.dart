import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:flutter/material.dart';

class BookCardList extends StatelessWidget {
  const BookCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFixedExtentList(
          itemExtent: MediaQuery.of(context).size.width * 0.4,
          delegate: SliverChildBuilderDelegate((context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10),
              child: BookCard(),
            );
          }, childCount: 10),
        )
      ],
    );
  }
}
