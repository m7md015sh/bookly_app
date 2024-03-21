import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failures, BookModel>> fetchNewSetBooks() async {
    try {
      var data = apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      Future<Map<String, dynamic>> books= data;
      return right(books as BookModel);
    } on Exception catch (e) {
      return left(ServerFailure());
    }

  }

  @override
  Future<Either<Failures, BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
