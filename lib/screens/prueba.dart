import 'package:flutter/material.dart';
import 'package:prueba/screens/pantalla2.dart';

class Prueba extends StatelessWidget {
  const Prueba({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eliana Castro"),
      ),
      body: Column(
        children: [
          Text("Usuaio:"),
          ElevatedButton(onPressed: ()=> alerta1(context), child: Text("Ejercicio 2") )
        ],
      ),
    );
  }
}

void alerta1(context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("Desea ir al ejercicio 2 ?"),
      actions: [
        FilledButton(onPressed: ()=> navegacionEjecicioDos(context), 
        child: Text("Continuar")),
        FilledButton(onPressed: ()=> cerrar(context), 
        child: Text("Cerrar"))
      ],
     
    );
  });
}
void navegacionEjecicioDos(context){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> EjercicioDos()));
}
void cerrar(context){
  Navigator.pop(context);
}