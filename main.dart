import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  //StatelessWidget{
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }

}
  class MyAppState extends State <MyApp> {

  var _questionIndex=0;
  void _answerQuestion(){
    setState(() {
      _questionIndex=_questionIndex+1;
     //setState() is update visit method when calling build method again
    });
     print(_questionIndex);
   // print("Answer chosen! ");
  }

  @override
  Widget build(BuildContext context){
   var  questions =  [
      {
        'questionText': 'what\'s your favorite color', 'answer': [
        'black','red','green','white'],
      },
      {
        'questionText': 'what\'s your favorite animal', 'answer': [
        'cow','rabbit','elephant','ass'],
      },
      {
        'questionText': 'what\'s your favorite inspector', 'answer': [
        'Max','Max','Max','Max'],
      },


      // 'what\'s your favorite color',
      //     'what\'s your favorite animal',

    ];

    // var dummy=['hello'];
    // dummy.add("max");
    // print(dummy);

    //questions=[]; //does not work if questionsis a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz app'),
        ),
        body: Column(
          children:[
           // Text('The question! '),
            Question(
              questions[_questionIndex]['questionText'],
              //  question[0]//.elementAt(0)
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer){
         return Answer(_answerQuestion, answer);
       }).toList()

            //Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 2'),
            //   //  => anonymous function call
            //   onPressed: () => print('Answer 2 chosen! '),
            // ),
           // Answer(_answerQuestion),
            // RaisedButton(
            //   child: Text('Answer 3'),
            //   onPressed: (){
            //     //....
            //     print('Answer 3 chosen ! ');
            //   },
            // )
           // Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }

}