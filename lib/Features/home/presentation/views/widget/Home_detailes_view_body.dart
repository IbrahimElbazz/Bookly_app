import 'package:bookly_app/Features/home/presentation/views/widget/Book_detailes_custem_appBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/Book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/action_button.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/list_view_item_inDetails.dart';

import 'package:bookly_app/core/utils/style.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Book_detailes_view_body extends StatelessWidget {
  const Book_detailes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SafeArea(
                  child: const Book_detailes_custem_appBar(),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: const custem_item(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'The Book',
                    style: Style.title.copyWith(fontSize: 30),
                  ),
                ),
                Text(
                  'The Book d',
                  style: Style.title
                      .copyWith(color: Colors.white.withOpacity(.75)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Book_rating(),
                const SizedBox(
                  height: 32,
                ),
                const action_button(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Style.title.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const list_view_item_inDetails(),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
