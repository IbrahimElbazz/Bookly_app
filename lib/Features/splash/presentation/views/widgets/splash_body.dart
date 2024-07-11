import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/images.dart';

class splash_body extends StatefulWidget {
  const splash_body({super.key});

  @override
  State<splash_body> createState() => _splash_bodyState();
}

class _splash_bodyState extends State<splash_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidanimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: (Duration(seconds: 2)),
    );
    slidanimation = Tween(begin: Offset(0, 20), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
          Image.asset(imageData.logo),
          SizedBox(
            height: 5,
          ),
          AnimatedBuilder(
            animation: slidanimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidanimation,
                child: Text(
                  'Read free book',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
