import 'package:flutter/material.dart';

void main() {
  runApp(MiContenedor());
}
class MiContenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alondra Ramirez Sandoval mat:1092',
           style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 46, 46, 46),),
        ),
        backgroundColor: const Color.fromARGB(255, 175, 184, 233),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer rectángulo con color sólido
              Container(
                width: 110,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, // Color del borde
                    width: 2, // Grosor del borde
                  ),
                ),
              ),
              SizedBox(width: 10), // Espacio entre los rectángulos

              // Segundo rectángulo con color sólido
              Container(
                width: 110,
                height: 70,
                color: Colors.green,
              ),
              SizedBox(width: 10), // Espacio entre los rectángulos

              // Tercer rectángulo con una imagen desde una URL
              Container(
                width: 110,
                height: 70,
                child: Image.network(
                  'https://img.asmedia.epimg.net/resizer/v2/W43O7ENGRBGIZDJVXGQ2AJX6EM.jpg?auth=480a89393b05099f7a52f4da4fa16fb5a952b029f6ae59a3a832ee74fdf3fc91&width=1472&height=828&smart=true', // URL de la imagen
                  fit: BoxFit.cover, // Ajusta la imagen al contenedor
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}