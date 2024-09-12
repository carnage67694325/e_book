import 'package:e_book/core/models/book_model/book_model.dart';
import 'package:e_book/Features/home/presentation/view_models/similiar_books_cubit/similar_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView(
      {super.key, required this.book, this.searchBook = 'comics'});
  final BookModel book;
  final String searchBook;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchFeaturedBooks(
        category: widget.book.volumeInfo?.categories?[0] ?? 'unkown',
        search: widget.searchBook);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBodys(
        book: widget.book,
      )),
    );
  }
}
