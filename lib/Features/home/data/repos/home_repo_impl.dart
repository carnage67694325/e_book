import 'package:dartz/dartz.dart';
import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repos/home_repo.dart';
import 'package:e_book/core/errors/failure.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
