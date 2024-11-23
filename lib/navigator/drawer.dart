
import 'package:flutter/material.dart';
import 'package:prueba/main.dart';
import 'package:prueba/screens/pantalla1.dart';
import 'package:prueba/screens/prueba.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Inicio", style: TextStyle(color: Colors.lightBlue)),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp())),
          ),
          
          ListTile(
            tileColor: Colors.purple,
            title: Text("Ejercicio 1"),
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla1())),
          )
        ],
      ),
    );
  }
}