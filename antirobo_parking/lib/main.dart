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
  double precioTota = 0.0;
  String horaIni;
  String horaFin;
  TimeOfDay time1;
  TimeOfDay time2;

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
                    time1 = TimeOfDay(hour: int.parse(horaIni.split(":")[0]), minute: int.parse(horaIni.split(":")[1]));
                  });
                },
                decoration: InputDecoration(
                    icon: Icon(Icons.access_time),
                    labelText: 'Hora de Inicio',
                    hintText: '¿A qué hora llegaste?',
                    helperText: 'Es la hora de llegada en formato HH:mm',
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
                    labelText: 'Hora de Fin',
                    hintText: '¿A qué hora te vas?',
                    helperText: 'Es la hora de salida en formato HH:mm',
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
                    labelText: 'Hora de Fin',
                    hintText: '¿A qué hora te vas?',
                    helperText: 'Es la hora de salida en formato HH:mm',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
            ],
          ),
        ),
    );
  }
}

