import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        backgroundColor: Color.fromARGB(255, 225, 172, 196),
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Text Button"),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.check),
              ),
              ElevatedButton(
                onPressed: () {
                  int numero = 100;
                  print("Presionaste aceptar $numero");
                },
                child: Text("Aceptar"),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Presionaste cancelar");
                },
                child: Text("Cancelar"),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
