import 'package:bookly_app/core/utils/images.dart';
import 'package:flutter/material.dart';

class custem_item extends StatelessWidget {
  const custem_item({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: AspectRatio(
        aspectRatio: 2 / 2.5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(imageData.test), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
