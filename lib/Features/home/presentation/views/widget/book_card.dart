import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amber,
          image: const DecorationImage(image: AssetImage(AssetsData.testImage)),
        )),
      ),
    );
  }
}
