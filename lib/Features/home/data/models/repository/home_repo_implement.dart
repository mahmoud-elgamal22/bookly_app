import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/models/repository/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/service/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  late final ApiService apiService;
  HomeRepoImplement(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
  var data = await apiService.get(
      endPoint:
          'volumes?q=subject:Programming&Filtering=free-ebooks&sorting=newest');
          List<BookModel> books = [];
          for (var item in data['items']) {
            books.add(BookModel.fromJson(item));
          }
          return Right(books);
} on Exception catch (e) {
 return Left(ServerFailure());
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
