import 'package:bookly_app/Features/home/presentation/views/widget/Book_detailes_custem_appBar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custem_item.dart';

import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Book_detailes_view_body extends StatelessWidget {
  const Book_detailes_view_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(
            child: Book_detailes_custem_appBar(),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: custem_item(),
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
            style: Style.title.copyWith(color: Colors.white.withOpacity(.75)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.yellow,
                size: 20,
              ),
              const Text(
                '4.8',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Text('(2390)',
                  style: TextStyle(color: Colors.white.withOpacity(.5)))
            ],
          )
        ],
      ),
    );
  }
}
