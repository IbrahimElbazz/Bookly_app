import 'package:flutter/material.dart';

class custem_buttom extends StatelessWidget {
  const custem_buttom(
      {super.key,
      required this.ontap,
      required this.title,
      required this.topleft,
      required this.bottomLeft,
      required this.bottomRight,
      required this.topRight,
      required this.color,
      required this.textStyle});
  final void Function()? ontap;
  final String title;
  final Radius topleft, bottomLeft, bottomRight, topRight;
  final Color color;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: topleft,
                    bottomLeft: bottomLeft,
                    bottomRight: bottomRight,
                    topRight: topRight),
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(
              color,
            )),
        onPressed: ontap,
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
