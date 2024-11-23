import 'package:flutter/material.dart';

TextEditingController vInicial = TextEditingController();
TextEditingController vFinal = TextEditingController();

class Pantalla1 extends StatelessWidget {
  Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 1"),
      ),
      body: Column(
        children: [
          Text(
              "Una pista de autos se encuentra realizando pruebas de velocidad de los vehículos participantes. Si al realizar la prueba, el vehículo no cumple con el tiempo mínimo, se deberá desplegar un mensaje indicando que el vehículo no aprueba, caso contrario se desplegará un mensaje indicando que sí aprobó."),
          Text(
              "La aplicación debe solicitar al usuario ingresar la velocidad inicial (V) y la velocidad final (Vf) y se conoce que la aceleración media (a) es de 10m/s2"),
          ingresoVI(),
          ingresoVF(),
          ElevatedButton(
            onPressed: () => resultadoMostrar(context),
            child: Text("Calcular"),
          )
        ],
      ),
    );
  }
}

Widget ingresoVI() {
  return Column(
    children: [
      Form(
        child: TextField(
          controller: vInicial,
          decoration: InputDecoration(labelText: 'Ingrese la velocidad inicial'),
        ),
      )
    ],
  );
}

Widget ingresoVF() {
  return Column(
    children: [
      Form(
        child: TextField(
          controller: vFinal,
          decoration: InputDecoration(labelText: 'Ingrese la velocidad final'),
        ),
      )
    ],
  );
}

double Resultado(double vFinal, double vInicial) {
  double res = (vFinal - vInicial) / 10;
  return res;
}

void resultadoMostrar(contex) {

    double vi = double.parse(vInicial.text);
    double vf = double.parse(vFinal.text);

    double rresultado = Resultado(vf, vi);

    showDialog(
      context: contex,
      builder: (BuildContext contex) {
        return AlertDialog(
          title: const Text("Resultado"),
          content: Text(
              "El tiempo calculado es: ${rresultado.toString()} segundos."),
          actions: [
            TextButton(
              onPressed: ()=>cerrar(contex),
              child: const Text("Cerrar"),
            ),
          ],
        );
      },
    );
  } 
void cerrar(context){
  Navigator.pop(context);
}