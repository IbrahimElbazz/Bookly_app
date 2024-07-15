import 'package:bookly_app/Features/home/presentation/views/widget/Book_detailes_custem_appBar.dart';
import 'package:flutter/material.dart';

class Book_detailes_view_body extends StatelessWidget {
  const Book_detailes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Book_detailes_custem_appBar(),
      ),
    );
  }
}
