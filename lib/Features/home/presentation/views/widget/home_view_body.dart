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
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.082,
          vertical: MediaQuery.of(context).size.height * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: const BookCardList()),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.055,
          ),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const BestSellerCard()
        ],
      ),
    );
  }
}
