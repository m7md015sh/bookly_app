import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failure, BookModel>> fetchNewSetBooks() async {
    try {
      var data = apiService.get(
          endPoint:   'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      Future<Map<String, dynamic>> books= data;
      return right(books as BookModel);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }

  }

  @override
 Future<Either<Failure, BookModel>> fetchFeaturedBooks() async{
    try {
      print('===============ssssssss================');

      dynamic data =await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      print('===============ssssssss================${data}');

     var books= BookModel.fromJson(data);
      return right(books );
    } on Exception catch (e) {
      if (e is DioError) {
        print('error is ==================================$e');
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
