import 'package:flutter/material.dart';

//First function executed by DART
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var index = 0;

  //Other method
  void answerQuestion() {
    index++;
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What \'s your favorite color?',
      'What \'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(
          children: <Widget>[
            Text(questions[index]),
            //with anonymous function
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => print('Answer 1 choosen')),
            //with anonymous function
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer 2 choosen');
                }),
            //with above called function
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
