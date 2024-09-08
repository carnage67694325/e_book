import 'package:e_book/core/utils/widgets/custom_button_text.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: Row(
        children: [
          CustomButtonText(
            onPressed: () {},
            splashColor: const Color(0xffEF8262),
            text: '19.99€',
            textColor: Colors.black,
            backGorundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          CustomButtonText(
            onPressed: () {},
            splashColor: Colors.black,
            fontSize: 16,
            text: 'Free Preview',
            textColor: Colors.white,
            backGorundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
