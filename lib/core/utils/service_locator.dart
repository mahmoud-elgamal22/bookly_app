import 'package:bookly/Features/home/data/models/repository/home_repo_implement.dart';
import 'package:bookly/core/utils/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(getIt.get<ApiService>()),
  );
}
