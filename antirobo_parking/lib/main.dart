import 'package:flutter/material.dart';

void main() => runApp(antiRobo());

class antiRobo extends StatefulWidget {

  @override
  State <StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State {

  double precioHora = 0.0;
  double precioFrac = 0.0;
  double precioTotal = 0.0;
  int horas=0;
  int minutos=0;
  double tiempo_total=0;
  String horaIni;
  String horaFin;
  TimeOfDay time1;
  TimeOfDay time2;
  TimeOfDay time3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('No me vas a Robar'),
          ),
          body: Column(
            children: <Widget>[
              TextField(
                onChanged: (varCambio) {

                  print(varCambio);
                  setState(() {
                    precioHora= double.parse(varCambio);
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.attach_money),
                  labelText: 'Precio por Hora',
                  hintText: 'Coloca el precio por la primer hora',
                  helperText: 'Es el precio que se te cobra por la primer hora',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              TextField(
                onChanged: (varCambio) {

                  print(varCambio);
                  setState(() {
                    precioFrac= double.parse(varCambio);
                  });
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.attach_money),
                    labelText: 'Precio por Fracción de Hora',
                    hintText: 'Coloca el precio después de la primer hora',
                    helperText: 'Es el precio que se te cobra despues de la hora',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              TextField(
                onChanged: (varCambio) {

                  print(varCambio);
                  setState(() {
                    horaIni= varCambio;
                    time2 = TimeOfDay(hour: int.parse(horaIni.split(":")[0]), minute: int.parse(horaIni.split(":")[1]));
                  });
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.access_time),
                    labelText: 'Hora de Llegada',
                    hintText: '¿A qué hora llegaste?',
                    helperText: 'Es la hora de entrada en formato HH:mm',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              TextField(
                onChanged: (varCambio) {

                  print(varCambio);
                  setState(() {
                    horaFin= varCambio;
                    time2 = TimeOfDay(hour: int.parse(horaIni.split(":")[0]), minute: int.parse(horaIni.split(":")[1]));
                  });
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.access_time),
                    labelText: 'Hora de Fin',
                    hintText: '¿A qué hora te vas?',
                    helperText: 'Es la hora de salida en formato HH:mm',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
              TextField(
                onChanged: (varCambio){
                  print(precioTotal);
                  setState(() {
                    horas=time2.hour-time1.hour;
                    minutos=time2.minute-time1.minute;
                    tiempo_total=horas+minutos.abs()/60;
                    precioTotal = precioHora+precioFrac*tiempo_total;
                  });
                },
              )
            ],
          ),
        ),
    );
  }
}

