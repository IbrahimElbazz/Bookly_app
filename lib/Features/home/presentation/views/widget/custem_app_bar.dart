import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custem_app_bar extends StatelessWidget {
  const custem_app_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            imageData.logo,
            width: 80,
            height: 60,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.search,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
