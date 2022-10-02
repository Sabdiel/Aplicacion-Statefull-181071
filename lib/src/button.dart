import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MybuttonSate createState() => _MybuttonSate();
}

class _MybuttonSate extends State<MyButton> {
  String FlutterText = "";
  int index = 0;
  List<String> collection = ["Flutter", "Es", "Genial"];
  void onPressButton() {
    setState(() {
      FlutterText = collection[index];
      index = index < 2 ? index = 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stateful Widget - 181071"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(FlutterText, style: TextStyle(fontSize: 40)),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  child: Text("Actualizar"),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: onPressButton)
            ],
          ),
        ),
      ),
    );
  }
}
