import 'package:flutter/material.dart';
import 'package:prueba/screens/prueba.dart';

 TextEditingController altura = TextEditingController();

class EjercicioDos extends StatelessWidget {
  const EjercicioDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejecicio 2"),
      ),
      body: Column(
        children: [
          Text("Desarrollar una aplicación que permita determinar la presión (P) a la que un submarino es sometido en el mar. La densidad (ρ) del agua de mar es: 1025 kg/m3 y la gravedad un valor de 9.8 m/s2 - El usuario debe ingresar la altura. "),
          ingresoAltura(),
         ElevatedButton(
            onPressed: () => resultadoMostrar(context),
            child: Text("Calcular"),
          )
        ],
      ),
    );
  }
}

Widget ingresoAltura(){
  return Column(
    children: [
      Form(child: 
        TextField(
          controller: altura,
          decoration: InputDecoration(
            labelText: 'Ingrese la velociodad final'
          ),
          
        ),
      
      )
    ],
  );
}
void resultado(contex){
  showDialog(context: contex, builder: (BuildContext contex){
    return AlertDialog(
         title: const Text("Resultado"),
        content: const Text("Es el cuerpo del alert"),
    );
  });
}
double Resultado(double altura){
  double p = 1025;
  double g = 9.8;
  double presion = p * g * altura;
  return presion;
}
void resultadoMostrar(contex){
   double al = double.parse(altura.text);

   double rresultado = Resultado(al);
  showDialog(context: contex, 
  
  builder: (BuildContext contex ){
    return AlertDialog(
      title: const Text("Resultado"),
      content: Text("la presion  es : ${rresultado.toString()}"),
        actions: [
            TextButton(
              onPressed: ()=>cerrar(contex),
              child: const Text("Cerrar"),
            ),
        ],
    );
  });
}
void cerrar(context){
  Navigator.pop(context);
}