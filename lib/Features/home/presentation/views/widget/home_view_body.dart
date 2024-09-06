import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:e_book/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 48),
      child: Column(
        children: [
          CustomAppBar(),
          BookCard(),
        ],
      ),
    );
  }
}
