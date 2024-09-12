import 'dart:developer';

import 'package:e_book/core/models/book_model/book_model.dart';
import 'package:e_book/core/utils/widgets/custom_button_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: Row(
        children: [
          CustomButtonText(
            onPressed: () async {},
            splashColor: const Color(0xffEF8262),
            text: 'Free',
            textColor: Colors.black,
            backGorundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          CustomButtonText(
            onPressed: () async {
              final uri = Uri.parse(book.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
                log('tapped');
              }
            },
            splashColor: Colors.black,
            fontSize: 16,
            text: 'Preview',
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
