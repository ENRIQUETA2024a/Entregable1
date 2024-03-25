import 'package:flutter/material.dart';
import 'package:tarea1/bodega/controllers/producto_controller.dart';
import 'package:tarea1/bodega/models/producto_model.dart';
import 'package:tarea1/bodega/views/cart_screen.dart';
import 'package:tarea1/bodega/views/productos_list.dart';
import 'package:tarea1/clases/banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => ProductList(),
          '/cart': (BuildContext context) => CartScreen()
        });
    // home: Scaffold(
    //     appBar: AppBar(
    //         title: const Text(
    //           'Bodega Digital',
    //           style: TextStyle(color: Colors.black),
    //         ),
    //         backgroundColor: Colors.greenAccent),
    //     body: const Columna(Colors.green)));
  }
}
