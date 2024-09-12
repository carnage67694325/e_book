import 'package:bloc/bloc.dart';
import 'package:e_book/core/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks(
      {required String category, required String search}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimiliarBooks(
      category: category,
    );
    result.fold((failure) {
      emit(SimilarBooksFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
