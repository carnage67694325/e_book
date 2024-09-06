import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SlidingAnimatedLogo extends StatelessWidget {
  const SlidingAnimatedLogo({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(AssetsData.logo),
                const SizedBox(
                  height: 4,
                ),
                const Text('Read Free Books', textAlign: TextAlign.center),
              ],
            ),
          );
        });
  }
}
