import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({super.key});
  late Widget image;
  final Widget? text;
  final Color? color;
  final double? radius;
  final VoidCallback? onPressed;

  MyButton({this.image, this.text, this.color, this.radius, this.onPressed});

  // {required this.image,
  // required this.text,
  // required this.color,
  // required this.radius,
  // required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            ),
          ],
        ),
        onPressed: () {},
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
      ),
    );
  }
}
