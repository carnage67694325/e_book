import 'package:e_book/Features/home/presentation/views/widget/book_rating.dart';
import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/assets.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsRoute);
      },
      child: Row(
        children: [
          SizedBox(
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
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                'J.K. Rowling',
                style: Styles.textStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    width: 44.3,
                  ),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
    ();
  }
}
