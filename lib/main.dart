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
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 55),
            child: Column(
              // Separación entre los 3 componentes
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start, // Vertical
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Horizontal
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
                      "This Is The Best Coffe Store",
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
                      child: Text(
                        'Iniciar Sesion',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20),
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  30))), // Minimo de tamaño
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Registrarse",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          side: BorderSide(
                            color: Colors.brown,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20),
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
      ),
    );
  }
}
