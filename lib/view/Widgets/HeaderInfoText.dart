import 'package:flutter/material.dart';

class HeaderInfoText extends StatelessWidget {
  final String headerText;

  HeaderInfoText({this.headerText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: Colors.black87
      ),
    );
  }
}
