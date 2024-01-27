import 'package:booklyapp/core/utils/service_locetor.dart';
import 'package:booklyapp/featurtes/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo_implemintaion.dart';
import 'package:booklyapp/featurtes/home/presention/manger/simillar_books_cubit/simillar_books_cubit.dart';
import 'package:booklyapp/featurtes/home/presention/views/book_view_details.dart';
import 'package:booklyapp/featurtes/home/presention/views/home_view.dart';
import 'package:booklyapp/featurtes/search/presentation/search_view.dart';
import 'package:booklyapp/featurtes/splash/presentation/views/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailView',
        builder: (context, state) =>  BlocProvider(
          create: (context) => SimillarBooksCubit(homerepo:getIt.get<HomeRepoImplementaion>() ),
          child: BookDetailsView(bookmodel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: '/SearchView',
        builder: (context, state) => const Searchview(),
      )
    ],
  );
}
