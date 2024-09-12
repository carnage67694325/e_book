import 'package:e_book/Features/home/presentation/views/widget/newset_book_card.dart';
import 'package:e_book/Features/search/presentation/view_model/search_book_cubit/search_book_cubit.dart';
import 'package:e_book/core/utils/widgets/error_text.dart';
import 'package:e_book/core/utils/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSuccess) {
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
        } else if (state is SearchBookFailure) {
          return SliverToBoxAdapter(
              child: ErrorText(errMessage: state.errMessage));
        } else if (state is SearchBookLoading) {
          return const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Loading(),
              ],
            ),
          );
        } else {
          return const SliverToBoxAdapter();
        }
      },
    );
  }
}
