import 'package:flutter/material.dart';

class ProductCatalogTab extends StatelessWidget {
  const ProductCatalogTab({super.key});

  // Define the product data as a static list
  static List<Map<String, dynamic>> get products => [
    {
      'name': 'Product 1',
      'price': 29.99,
      'imageUrl': 'https://via.placeholder.com/150', // Placeholder image
    },
    {
      'name': 'Product 2',
      'price': 49.99,
      'imageUrl': 'https://via.placeholder.com/150', // Placeholder image
    },
    {
      'name': 'Product 3',
      'price': 19.99,
      'imageUrl': 'https://via.placeholder.com/150', // Placeholder image
    },
    {
      'name': 'Product 4',
      'price': 99.99,
      'imageUrl': 'https://via.placeholder.com/150', // Placeholder image
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Catalog'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Product Image
                  Image.network(
                    product['imageUrl'],
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16),

                  // Product Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name'],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '\$${product['price'].toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
