import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({Key? key, required this.buttonText, this.onTap}) : super(key: key);

  final String buttonText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: EdgeInsets.only(top: 30),
          width: 350,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
