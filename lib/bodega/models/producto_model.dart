class ProductoModel {
  final String id;
  String slug;
  String name;
  String description;
  double price;
  int stock;
  int cantidad;

  ProductoModel(
      {required this.id,
      required this.slug,
      required this.name,
      required this.description,
      required this.price,
      required this.stock,
      required this.cantidad});

  factory ProductoModel.fromJson(Map<String, dynamic> json) {
    return ProductoModel(
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      stock: json['stock'],
      cantidad: 1,
    );
  }
}
