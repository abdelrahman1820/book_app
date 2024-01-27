import 'package:booklyapp/core/errors/failure.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplementaion implements HomeRepo {
  final ApiService apiservice;

  HomeRepoImplementaion({required this.apiservice});
  @override
  Future<Either<Failure, List<BookModel>>> featchnNwestBooks() async {
    try {
      var data = await apiservice.get(
          endpoint:
              "volumes?Filtering=free-ebooks&sotring=newest&q=subject:economics");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks() async {
    try {
      var data = await apiservice.get(
          endpoint: "volumes?Filtering=free-ebooks&q=subject:programming");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiservice.get(
          endpoint:
              "volumes?Filtering=free-ebooks&sotring=relevence&q=subject:programming");
      List<BookModel> books = [];
      for (var element in data["items"]) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      }
      return Left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
