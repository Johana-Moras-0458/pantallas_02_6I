import 'package:flutter/material.dart';
import 'package:morasrutas/pagina_dos.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffcefdcd),
        title: const Text(
          'Pantalla Dos',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.blueGrey,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla Inicial!'),
            ),
          ),
        ],
      ),
    );
  }
}
