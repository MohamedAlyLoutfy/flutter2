import 'package:flutter/material.dart';
import './textcontrol.dart';
import './text.dart';
void main () {
  runApp(MyApp());

}
class MyApp extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
   var _questions = [
     'First text',
     'second text',
     'third text',
     'fourth text'


   ];

  var _questionIndex = 0;
 

  void _resetQuiz(){
     setState(() {
      _questionIndex=0;
     
    }); 


  }
  
  void _answerQuestion(){

    
    setState(() {
      _questionIndex=_questionIndex+1;
    }); 
    if (_questionIndex <  _questions.length) {
      print('We have more text');

  } else{
    print('no more texts');
  }
  }


  @override
  Widget build(BuildContext context){
 
  return MaterialApp(home: Scaffold(
    appBar: AppBar(title:Text('My First App'),
    ),
    body: _questionIndex < _questions.length?
     Column(
      children: [
        TextControl(_questions[_questionIndex]),
        Mytext(_answerQuestion),

    ],)
    : Column(
      children: [
        
        RaisedButton(
          color:Colors.blue,
          textColor: Colors.white,
          child: Text('Restart'),
          onPressed: _resetQuiz),

    ],)
  ),
  );
  }
}