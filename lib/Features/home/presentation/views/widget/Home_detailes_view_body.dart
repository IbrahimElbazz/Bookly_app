import 'package:bookly_app/Features/home/presentation/views/widget/Book_detailes_custem_appBar.dart';

import 'package:bookly_app/Features/home/presentation/views/widget/box_details_section.dart';

import 'package:bookly_app/Features/home/presentation/views/widget/similar_box_section.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookingDetailsViewBody extends StatelessWidget {
  const BookingDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                SafeArea(
                  child: BookingDetailsCustomAppBar(),
                ),
                BoxDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBoxSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
