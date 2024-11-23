import 'package:flutter/material.dart';
import 'package:prueba/navigator/drawer.dart';
import 'package:prueba/screens/pantalla1.dart';
import 'package:prueba/screens/prueba.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prueba 1",
      home: Cuerpo(),
    );
  }
}
class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido"),
      ),
      body: Prueba(),
      
       drawer: MiDrawer(),
    );
  }
}