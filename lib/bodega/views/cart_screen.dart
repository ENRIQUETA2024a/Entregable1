import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Carrito')),
        body: const Center(
            child: Text("Aun no tiene nada agregado a su carrito")));
  }
}
