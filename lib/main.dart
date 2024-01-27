// import 'package:booklyapp/constant.dart';
// import 'package:booklyapp/core/utils/app_router.dart';
// import 'package:booklyapp/core/utils/service_locetor.dart';
// import 'package:booklyapp/featurtes/home/data/models/repos/home_repo_implemintaion.dart';
// import 'package:booklyapp/featurtes/home/presention/manger/featured_books_cubit/featured_books_cubit.dart';
// import 'package:booklyapp/featurtes/home/presention/manger/newest_books_cubit/news_books_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   setupServiceLocetor();
//   runApp(const BooklyApp());
// }

// class BooklyApp extends StatelessWidget {
//   const BooklyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (context) =>
//               FeaturedbooksCubit(homerepo: getIt.get<HomeRepoImplementaion>()),
//         ),
//         BlocProvider(
//           create: (context) =>
//               NewsBooksCubit(homerepo: getIt.get<HomeRepoImplementaion>()),
//         ),
//       ],
//       child: MaterialApp.router(
//         routerDelegate: AppRouter.router.routerDelegate,
//         routeInformationParser: AppRouter.router.routeInformationParser,
//         theme: ThemeData.dark().copyWith(
//           scaffoldBackgroundColor: kPrimaryColor,
//         ),
//       ),
//     );
//   }
// }import 'package:booklyapp/featurtes/home/presention/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/service_locetor.dart';
import 'package:booklyapp/featurtes/home/data/models/repos/home_repo_implemintaion.dart';
import 'package:booklyapp/featurtes/home/presention/manger/newest_books_cubit/news_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:booklyapp/featurtes/home/presention/manger/featured_books_cubit/featured_books_cubit.dart';


void main() {
  setupServiceLocetor();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedbooksCubit(homerepo: getIt.get<HomeRepoImplementaion>())..fethchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsBooksCubit(homerepo: getIt.get<HomeRepoImplementaion>())..featchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
      routerConfig: AppRouter.router,
     
         
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
