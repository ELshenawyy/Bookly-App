import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
