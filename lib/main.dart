import 'package:adg_task_1/quiz.dart';
import 'package:adg_task_1/result.dart';
import 'package:flutter/material.dart';
import 'package:adg_task_1/question.dart';
import 'package:adg_task_1/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [{'text':'Black','score':10},{'text':'Red','score':5},{'text':'Green','score':3},{'text':'White','score':1}]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [{'text':'Rabbit','score':10},{'text':'Snake','score':5},{'text':'Elephant','score':3},{'text':'Lion','score':1}],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [{'text':'Angela','score':10},{'text':'Charles','score':5},{'text':'Max','score':3},{'text':'Dave','score':1},],
    }
  ];

  var _questionIndex = 0;
  var _totalScore=0;

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print("More Questions on the way");
    }
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product-Sans',
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Quiz',
              style: TextStyle(fontSize: 35),
            ),
          ),
          backgroundColor: Colors.grey.shade800,
        ),
        body: _questionIndex < _questions.length
            ? Column(
              children: [SizedBox(height: 200,),
                Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  ),
              ],
            )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
