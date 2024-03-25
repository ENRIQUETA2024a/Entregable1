import 'package:flutter/material.dart';

class Columna extends StatelessWidget {
  const Columna(this.elcolor, {super.key});

  final Color elcolor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          color: elcolor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Lista de Productos'),
              const SizedBox(
                width: 50,
              ),
              Image.asset(
                'assets/images/carrito_compras.png',
                width: 100,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // const Expanded(
        //   child: ListaProductos(),
        // )
      ],
    );
  }
}
