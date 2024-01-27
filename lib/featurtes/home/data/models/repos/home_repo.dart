import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchnNwestBooks();
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks();
   Future<Either<Failure, List<BookModel>>> featchSimilarBooks({required String category});

}
