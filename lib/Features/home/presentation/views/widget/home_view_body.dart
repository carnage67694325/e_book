import 'package:e_book/Features/home/presentation/views/widget/best_seller_book_list.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card_list.dart';
import 'package:e_book/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 48),
              child: CustomAppBar(),
            ),
            const SizedBox(
              height: 46.9,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const BookCardList()),
            ),
            const SizedBox(
              height: 49,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      const SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        sliver: BestSellerBookList(),
      ),
    ]);
  }
}
