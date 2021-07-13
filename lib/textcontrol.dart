import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  String mytext;
  TextControl(this.mytext);

  @override
  Widget build(BuildContext context) {
    return Text(mytext
      
    );
  }
}