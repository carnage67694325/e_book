import 'package:e_book/Features/home/presentation/views/widget/best_seller_book_list.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_card_list.dart';
import 'package:e_book/Features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomSearchTextfield(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Results',
            style: Styles.textStyle20,
          ),
        )),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15,
          ),
        ),
        SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            sliver: VerticalBookList())
      ],
    );
  }
}
