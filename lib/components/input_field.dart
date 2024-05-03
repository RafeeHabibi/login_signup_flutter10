import 'package:flutter/material.dart';

import 'kConst.dart';

Widget inputField({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: kInputTTX,
      ),
      SizedBox(height: 5),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kgreyColor),
          ),
        ),
      ),
      SizedBox(height: 10),
    ],
  );
}