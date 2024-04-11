import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/colors/colors_constants.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp( const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewSetBooksCubit(
            getIt.get<HomeRepoImp>(),
          ),
        ),
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImp>(),
          )..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: primaryColor,
            textTheme:
                GoogleFonts.montaguSlabTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
