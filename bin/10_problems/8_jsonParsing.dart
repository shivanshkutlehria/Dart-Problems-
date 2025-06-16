// Json parsing

import 'dart:convert';

class Product {
  final int id;
  final String name;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.price,
  });

  factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );
  }
}

List<Product> parseProducts(String jsonString) {
  try {
    final decoded = jsonDecode(jsonString);
    if (decoded is List) {
      return decoded.map((item) {
        if (item is Map<String, dynamic>) {
          return Product.fromjson(item);
        } else {
          throw FormatException("Invalid product item structure");
        }
      }).toList();
    } else {
      throw FormatException("Expected a JSON list");
    }
  } catch (e) {
    print('Parsing error: $e');
    return [];
  }
}
void main() {
  String jsonString = '''
  [
    {"id": 1, "name": "Laptop", "price": 999.99},
    {"id": 2, "name": "Mouse", "price": 25.50}
  ]
  ''';

  List<Product> products = parseProducts(jsonString);

  for (var product in products) {
    print('${product.name} costs \$${product.price}');
  }
}