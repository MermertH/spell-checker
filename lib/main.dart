import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final TextEditingController _controller = new TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Spell checker'),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: ('enter your work'),
              ),
              onSubmitted: (String str) {
                setState(() {
                  if(str==" " || str== null || str=="" )
                  {
                    result=" you did not enter any word";
                  }else {result = str;}

                });
                _controller.text = "";
              },
              controller: _controller,
            ),
            Text(result),
          ],
        ),
      )),
    ));
  }
}
