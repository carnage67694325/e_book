import 'package:bloc/bloc.dart';
import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());
  final SearchRepo searchRepo;
  Future<void> searchBook({required String searchBook}) async {
    emit(SearchBookLoading());
    var result = await searchRepo.searchBooks(searchbook: searchBook);
    result.fold((failure) {
      emit(SearchBookFailure(errMessage: failure.errMessage));
    }, (books) {
      emit(SearchBookSuccess(books: books));
    });
  }
}
