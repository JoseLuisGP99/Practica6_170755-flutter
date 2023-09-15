import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  int index = 0;
  List<String> collections = ['Flutter', 'es', 'genial'];

  void onPressButton() {
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Color.fromARGB(255, 117, 204, 248),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Le da tamaño al texto
              Text(flutterText, style: TextStyle(fontSize: 40.0)),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              //Convierte en botton el texto
              ElevatedButton(
                child: Text(
                  "Actualizar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          )),
        ));
  }
}
