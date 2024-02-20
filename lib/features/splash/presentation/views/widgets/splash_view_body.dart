import 'package:bookly_app/core/utils/assets/assets_paths.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsPaths.logoPath),
        const SizedBox(
          height: 4,
        ),
        const Text('Read Free Books',textAlign: TextAlign.center,),
      ],
    );
  }
}
