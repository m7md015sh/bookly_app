import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/colors/colors_constants.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp( Bookly());
}

class Bookly extends StatelessWidget {
   Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig:AppRouter.router,

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: primaryColor,
          textTheme:
              GoogleFonts.montaguSlabTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
