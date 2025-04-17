import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  PantallaSieteState createState() => PantallaSieteState();
}

class PantallaSieteState extends State<PantallaSiete> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcefdcd),
        title: const Text(
          'Pantalla Siete',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Center(
        // <- este Center centra todo en la pantalla
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // para que los widgets no ocupen todo el alto
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined, size: 50),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
              child: const Text('Click'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial!'),
            ),
          ],
        ),
      ),
    );
  }
}
