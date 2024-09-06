import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
            decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsData.testImage)),
        )),
      ),
    );
    ();
  }
}
