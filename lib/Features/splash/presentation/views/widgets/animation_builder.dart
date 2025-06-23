import 'package:flutter/material.dart';

class Animation_builder_widget extends StatelessWidget {
  const Animation_builder_widget({
    super.key,
    required this.slidAnimation,
  });

  final Animation<Offset> slidAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidAnimation,
          child: const Text(
            'Read free book',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        );
      },
    );
  }
}
