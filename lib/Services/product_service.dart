import 'package:pharm_app/models/product_model.dart';

class ProductService {
  Future<List<Product>> fetchProducts() async {
    // Simulate fetching data from an API
    await Future.delayed(const Duration(seconds: 2));

    return [
      Product(name: 'Paracetamol', description: 'Pain reliever', price: 5.0),
      Product(name: 'Ibuprofen', description: 'Anti-inflammatory', price: 8.0),
      Product(name: 'Aspirin', description: 'Blood thinner', price: 4.0),
    ];
  }
}
