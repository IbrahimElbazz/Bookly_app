import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Image.asset(
            ImageData.logo,
            width: 80,
            height: 60,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.searchView);
            },
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
          )
        ],
      ),
    );
  }
}
