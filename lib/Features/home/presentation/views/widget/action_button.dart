import 'package:bookly_app/core/utils/style.dart';
import 'package:bookly_app/core/widget/custem_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              topleft: const Radius.circular(30),
              bottomLeft: const Radius.circular(30),
              bottomRight: const Radius.circular(0),
              topRight: const Radius.circular(0),
              onTap: () {},
              title: '190' r'$',
              textStyle: Style.button25,
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Expanded(
            child: CustomButton(
              color: const Color.fromARGB(255, 1, 117, 171),
              topleft: const Radius.circular(0),
              bottomLeft: const Radius.circular(0),
              bottomRight: const Radius.circular(30),
              topRight: const Radius.circular(30),
              onTap: () {},
              title: 'Free',
              textStyle: Style.button25,
            ),
          ),
        ],
      ),
    );
  }
}
