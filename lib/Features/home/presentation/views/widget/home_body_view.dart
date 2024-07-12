import 'dart:collection';

import 'package:bookly_app/Features/home/presentation/views/widget/custem_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class home_body_view extends StatelessWidget {
  const home_body_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 30, right: 30),
        child: Column(
          children: const [
            custem_app_bar(),
            list_view_item(),
          ],
        ),
      ),
    );
  }
}

class list_view_item extends StatelessWidget {
  const list_view_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: custem_item(),
          );
        },
      ),
    );
  }
}
