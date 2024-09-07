import 'package:e_book/Features/home/presentation/views/widget/home_view_body.dart';
import 'package:e_book/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
