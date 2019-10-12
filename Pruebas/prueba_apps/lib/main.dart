import 'package:flutter/material.dart';

void main() => runApp(Vista());

class Vista extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('Vistas')
          ),
          body: Container(
              child:
              Text('Contenido del cuerpo'),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  offset: Offset(10, 15),
                  blurRadius: 5.0,
                )
              ],
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 4.0,
                color: Colors.greenAccent,
              )
            ),
            margin: EdgeInsets.all(50),
          ),
          )
        );
  }
}