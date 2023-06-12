import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Coffe Store",
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // Separación entre los 3 componentes
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coffe Store",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "This is the best coffe Store",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 70, 66, 66),
                    ),
                  )
                ],
              ),
              Image.asset('assets/coffe.gif'),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Iniciar Sesion'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(30))), // Minimo de tamaño
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Registrarse"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
