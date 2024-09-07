import 'package:e_book/Features/home/presentation/views/widget/best_seller_card.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card_list.dart';
import 'package:e_book/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 46.9,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: const BookCardList()),
          const SizedBox(
            height: 49,
          ),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          const BestSellerCard()
        ],
      ),
    );
  }
}
