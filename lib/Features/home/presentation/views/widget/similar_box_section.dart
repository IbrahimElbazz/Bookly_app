import 'package:bookly_app/Features/home/presentation/views/widget/list_view_item_inDetails.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SimilarBoxSection extends StatelessWidget {
  const SimilarBoxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const ListViewItemInDetails(),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
