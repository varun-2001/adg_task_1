import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);


  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You have completed the quiz successfully';
    } else if (resultScore <= 12) {
      resultText = 'You did okay :D';
    } else
      resultText = 'You suck';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 295.0,),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            color: Colors.grey.shade700,
            child: Text("Reset Quiz Progress"),
          )
        ],
      ),
    );
  }
}
