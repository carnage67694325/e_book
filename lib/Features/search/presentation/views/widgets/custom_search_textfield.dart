import 'dart:ui';

import 'package:e_book/Features/search/presentation/view_model/search_book_cubit/search_book_cubit.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor.withOpacity(0)),
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(16),
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.orange])),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: TextField(
              onSubmitted: (value) {
                BlocProvider.of<SearchBookCubit>(context)
                    .searchBook(searchBook: value);
              },
              // textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      AssetsData.searchIcon,
                      height: 28,
                    ),
                  ),
                  border: InputBorder.none),
            ),
          ),
        ));
  }
}
