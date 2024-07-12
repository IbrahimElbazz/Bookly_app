import 'package:bookly_app/Features/home/presentation/views/widget/custem_app_bar.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class home_body_view extends StatelessWidget {
  const home_body_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: const [
            custem_app_bar(),
          ],
        ),
      ),
    );
  }
}
