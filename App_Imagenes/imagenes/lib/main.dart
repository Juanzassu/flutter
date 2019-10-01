import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagenes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Imagenes'),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
      
          child: Image(image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),))
        
        
      ]))
    );
  }
}