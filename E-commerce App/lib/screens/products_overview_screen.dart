import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0068/6135/7171/products/7_394f6078-88a1-4d8a-a3e3-d33f4a393811_345x345@2x.jpg?v=1574240433',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter',
      price: 19.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/41EdHCO4asL._AC_SY580_.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want',
      price: 49.99,
      imageUrl:
          'https://ii1.pepperfry.com/media/catalog/product/f/u/568x625/futura-non-stick-hard-anodized-frying-pan-by-hawkins-futura-non-stick-hard-anodized-frying-pan-by-ha-dekxz1.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyShop'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ), //it tells how the grid should be structured like the rows and column numbers
          itemBuilder: (ctx, i) => ProductItem(
            loadedProducts[i].id,
            loadedProducts[i].title,
            loadedProducts[i].imageUrl,
          ),
        ));
  }
}
