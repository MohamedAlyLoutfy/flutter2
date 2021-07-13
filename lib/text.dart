import 'package:flutter/material.dart';
class Mytext extends StatelessWidget {
  final VoidCallback selectHandler;
  Mytext(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(

          color: Colors.blue,
          textColor: Colors.white,
          child: Text('click here'),
          onPressed: selectHandler),
      
    );
  }
}