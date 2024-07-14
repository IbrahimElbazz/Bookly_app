import 'package:bookly_app/Features/home/presentation/views/widget/List_item_view_bestseller.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/item_best_seller.dart';

import 'package:bookly_app/Features/home/presentation/views/widget/list_view_item.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:bookly_app/core/utils/style.dart';

import 'package:flutter/material.dart';

class home_body_view extends StatelessWidget {
  const home_body_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            custem_app_bar(),
            list_view_item(),
            SizedBox(
              height: 50,
            ),
            Text(
              'Best Seller',
              style: Style.title,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: List_item_view_bestseller()),
          ],
        ),
      ),
    );
  }
}
