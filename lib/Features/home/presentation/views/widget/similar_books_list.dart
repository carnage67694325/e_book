import 'package:e_book/Features/home/presentation/views/widget/book_card.dart';
import 'package:flutter/material.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 15),
                child: BookCard(
                  urlImage:
                      'https://media.printables.com/media/prints/550359/images/4421183_7c3ad661-3542-4a04-83ed-21466b813ff6/thumbs/inside/1280x960/png/baby-yoda-jedi-health.webp',
                ),
              );
            }));
  }
}
