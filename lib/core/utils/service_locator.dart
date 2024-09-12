import 'package:dio/dio.dart';
import 'package:e_book/Features/home/data/repos/home_repo_impl.dart';
import 'package:e_book/Features/search/data/repos/search_repo_impl.dart';
import 'package:e_book/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLoactor() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  getIt.registerSingleton<SearchRepoImpl>(
      SearchRepoImpl(getIt.get<ApiService>()));
}
