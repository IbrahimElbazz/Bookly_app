import 'package:bookly_app/Features/home/presentation/views/widget/Home_detailes_view_body.dart';
import 'package:flutter/material.dart';

class bookDetailsPage extends StatelessWidget {
  const bookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Book_detailes_view_body(),
    );
  }
}
