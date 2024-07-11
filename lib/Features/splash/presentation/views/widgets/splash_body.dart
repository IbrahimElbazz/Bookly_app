import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/images.dart';

class splash_body extends StatelessWidget {
  const splash_body({super.key});

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
          Text(
            'Read free book',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
