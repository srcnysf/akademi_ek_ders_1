import 'package:flutter/material.dart';

class MyLovelyButton extends StatelessWidget {
  Function() onPressed;
  String text;
  Color? color;

  MyLovelyButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = Colors.yellow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      color: color,
      onPressed: onPressed,
      child: Row(
        children: [
          Text(text),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.mail)
        ],
      ),
    );
  }
}
