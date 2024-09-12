import 'package:dartz/dartz.dart';
import 'package:e_book/core/models/book_model/book_model.dart';
import 'package:e_book/core/errors/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String searchbook});
}
