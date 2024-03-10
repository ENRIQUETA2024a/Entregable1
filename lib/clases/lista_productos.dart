import 'package:flutter/material.dart';

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class ListaProductos extends StatelessWidget {
  const ListaProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/naranja.png',
                  width: 100,
                ),
              ),
              title: const Text("Naranja"),
              subtitle: const Text("Deliciosa naranja cosechada en Perú"),
              trailing: const Text("Precio: S/ 5.99"),
            )),
        Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/sandia.png',
                  width: 100,
                ),
              ),
              title: const Text("Naranja"),
              subtitle: const Text("Deliciosa sandia dulce de Arequipa"),
              trailing: const Text("Precio: S/ 6.99"),
            )),
        Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/papaya.png',
                  width: 100,
                ),
              ),
              title: const Text("Papaya"),
              subtitle:
                  const Text("Deliciosa papaya proveniente de Quillabamba"),
              trailing: const Text("Precio: S/ 4.99"),
            )),
      ],
    );
  }
}
