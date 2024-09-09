import 'package:dartz/dartz.dart';
import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
