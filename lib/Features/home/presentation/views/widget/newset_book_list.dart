import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/view_models/newset_books_cubit/newset_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widget/newset_book_card.dart';
import 'package:e_book/core/utils/widgets/error_text.dart';
import 'package:e_book/core/utils/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalBookList extends StatelessWidget {
  const VerticalBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: NewsetBookCard(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(
              child: ErrorText(errMessage: state.errMessage));
        } else {
          return const SliverToBoxAdapter(child: Loading());
        }
      },
    );
  }
}
