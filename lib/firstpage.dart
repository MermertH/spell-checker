import 'package:flutter/material.dart';


class firstpage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return MyspellChecker();
  }
}
class MyspellChecker extends State<firstpage>
{

  final TextEditingController _controller = new TextEditingController();
  //final myController = TextEditingController();
  String result = "";
  double resultSize;

  void haveTheAnswer(String input) {
    String check;
    setState(() {
      if (input == " " || input == null || input == "") {
        result = " you did not enter any word";
      } else {
        result = input;
      }

      resultSize = result.length.toDouble();
    });
    _controller.text = "";
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.orange,
                ),
                padding: EdgeInsets.all(8.0),
                width: 600.0,
                margin: const EdgeInsets.fromLTRB(20, 2, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ('enter your word'),
                  ),
                  onSubmitted: haveTheAnswer,
                  controller: _controller,
                ),
              ),

              // result of the word
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.5)),

                //it should be with the length of the word
                margin: const EdgeInsets.fromLTRB(50, 2, 50, 2),
                padding: EdgeInsets.all(5),
                child: Center(
                  child: Text(result),
                ),
              ),
            ],
          ),
        ));
  }
}