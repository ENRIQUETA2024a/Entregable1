import 'package:flutter/material.dart';
import 'package:tarea1/bodega/models/carrito_model.dart';
import 'package:tarea1/bodega/models/producto_model.dart';

class ProductCard extends StatelessWidget {
  final ProductoModel product;

  ProductCard({required this.product});
  int cantidad = 1;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          // this is the coloumn
          children: [
            ListTile(
              leading: SizedBox(
                width: 100,
                child: Image.asset(
                  'assets/images/producto.jpg',
                  width: 100,
                ),
              ),
              title: Text('${product.name} - Stock: ${product.stock}'),
              subtitle: Text(product.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('S/ ${product.price}'),
                  IconButton(
                    iconSize: 20,
                    icon: const Icon(Icons.add),
                    onPressed: () {},
                  ),
                  Text(product.cantidad.toString()),
                  IconButton(
                    iconSize: 20,
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      // ...
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
