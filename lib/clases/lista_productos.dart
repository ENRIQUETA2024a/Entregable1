import 'package:flutter/material.dart';
import 'package:tarea1/bodega/models/producto_model.dart';

class ListaProductos extends StatelessWidget {
  final ProductoModel product;
  ListaProductos({required this.product});
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
      ],
    );
  }
}
