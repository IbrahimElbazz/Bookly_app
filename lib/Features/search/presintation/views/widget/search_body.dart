import 'package:bookly_app/Features/search/presintation/views/widget/custem_textfeild.dart';
import 'package:flutter/material.dart';

class search_view_body extends StatelessWidget {
  const search_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            custem_textfeild(),
          ],
        ),
      ),
    );
  }
}
