import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets/assets_paths.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_splash_view_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
//SingleTickerProviderStateMixin => Handling the rate of change values
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
    super.initState();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsPaths.logoPath),
        const SizedBox(
          height: 5,
        ),
        SlidingSplashText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        // Get.to(() => const HomeView(),
        //     // calculations
        //     transition: Transition.fade,
        //     duration: kTimeTransaction);
           GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
