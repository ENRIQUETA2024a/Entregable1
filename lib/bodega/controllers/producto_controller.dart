import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tarea1/bodega/models/producto_model.dart';
import 'package:http/http.dart' as http;
import 'package:tarea1/bodega/views/productos_list.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductList> {
  List<ProductoModel> products = [];

  @override
  void initState() {
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    // you can replace your api link with this link
    final response = await http.get(Uri.parse(
        'https://shop-api-roan.vercel.app/product?page=1&pageSize=5'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);

      setState(() {
        products =
            jsonData.map((data) => ProductoModel.fromJson(data)).toList();
      });
    } else {
      // Captura Error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bodega Digital'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 2,
                ),
                Container(
                  height: 80,
                  color: Colors.deepPurple.shade300,
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
                ListView.builder(
                  itemCount: products.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
                IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 50,
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/cart')),
              ],
            ),
          ),
        ));
  }
}
