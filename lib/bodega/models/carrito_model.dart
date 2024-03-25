import 'package:tarea1/bodega/models/producto_model.dart';
import 'package:scoped_model/scoped_model.dart';

class CarritoModel extends Model {
  List<ProductoModel> cart = [];
  double totalCartValue = 0;
}
