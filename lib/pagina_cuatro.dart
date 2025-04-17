import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc63b3b),
        title: const Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Cuadro de alerta '),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('Esto es una alerta'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Cerrar'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Mostrar Alerta'),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial!'),
            ),
          ),
        ],
      ),
    );
  }
}
