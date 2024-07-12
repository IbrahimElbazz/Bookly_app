import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class custem_app_bar extends StatelessWidget {
  const custem_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          imageData.logo,
          width: 60,
          height: 60,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        )
      ],
    );
  }
}
