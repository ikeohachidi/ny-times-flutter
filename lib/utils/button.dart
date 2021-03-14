import 'package:flutter/material.dart';

ButtonStyle outlineButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  side: MaterialStateProperty.all(
    BorderSide(
      color: Colors.black,
      width: 2,
    ),
  ),
  padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(vertical: 20),
  ),
);

Widget createOutlineButton(
    String text, double margin, Function actionCallBack) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: margin),
    child: SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: () => actionCallBack(),
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
          style: outlineButtonStyle),
    ),
  );
}
