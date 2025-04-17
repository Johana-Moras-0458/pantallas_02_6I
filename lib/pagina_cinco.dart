import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff592e66),
        title: const Text(
          'Pantalla Cinco ',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 200.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.blueGrey : Colors.white,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 75),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Pantalla inicial!'),
          ),
        ],
      ),
    );
  }
}
