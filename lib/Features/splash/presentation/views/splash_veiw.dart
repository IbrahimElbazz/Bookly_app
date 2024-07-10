import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class splash_page extends StatelessWidget {
  const splash_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(imageData.logo),
      ),
    );
  }
}
