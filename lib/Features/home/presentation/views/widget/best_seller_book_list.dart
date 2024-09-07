import 'package:e_book/Features/home/presentation/views/widget/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerBookList extends StatelessWidget {
  const BestSellerBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: BestSellerCard(),
        );
      },
    );
  }
}
