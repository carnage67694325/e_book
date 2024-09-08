import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchViewRoute);
          },
          icon: Image.asset(
            AssetsData.searchIcon,
            height: 28,
          ),
        )
      ],
    );
  }
}
