import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo_implemintaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
setupServiceLocetor() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(
      apiservice: getIt.get<ApiService>()
    ),
  );
}
