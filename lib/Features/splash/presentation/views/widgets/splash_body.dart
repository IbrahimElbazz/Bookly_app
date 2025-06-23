import 'package:bookly_app/Features/splash/presentation/views/widgets/animation_builder.dart';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:go_router/go_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();

    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.homeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageData.logo),
          const SizedBox(
            height: 5,
          ),
          Animation_builder_widget(
            slidAnimation: slidAnimation,
          ),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: (const Duration(seconds: 2)),
    );
    slidAnimation = Tween(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }
}
