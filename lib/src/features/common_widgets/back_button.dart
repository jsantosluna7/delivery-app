import 'package:flutter/material.dart';

Widget backButtton(BuildContext context, Color color) {
  return IconButton(
    icon: Icon(
      Icons.arrow_back,
      color: color,
      size: 30,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );
}
