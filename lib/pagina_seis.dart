import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  PantallaSeisState createState() => PantallaSeisState();
}

class PantallaSeisState extends State<PantallaSeis> {
  final List<String> _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          color: Colors.redAccent,
          child: ListTile(
            title: Text(
              "Deleted",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcefdcd),
        title: const Text(
          'Pantalla Seis',
          style: TextStyle(color: Colors.black, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: _items.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent,
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _removeItem(index),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Pantalla inicial!'),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
