import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';

class SmoothiesTab extends StatelessWidget {
  final Function(Product) addToCart;

  final List<Map<String, dynamic>> smoothiesOnSale = [
    {
      "id": 1,
      "name": "Banana Smoothie",
      "description": "Fruity Blend",
      "price": 25.0,
      "stock": 10,
      "color": Colors.yellow,
      "image": "lib/images/SmoothieBanana.png"
    },
    {
      "id": 2,
      "name": "Avocado Smoothie",
      "description": "Green Goodness",
      "price": 30.0,
      "stock": 8,
      "color": Colors.green,
      "image": "lib/images/SmoothieAvocado.png"
    },
    {
      "id": 3,
      "name": "Blueberry Smoothie",
      "description": "Berry Boost",
      "price": 28.0,
      "stock": 12,
      "color": Colors.blue,
      "image": "lib/images/SmoothieBlueberry.png"
    },
    {
      "id": 4,
      "name": "Lemon Smoothie",
      "description": "Citrus Splash",
      "price": 22.0,
      "stock": 9,
      "color": Colors.yellowAccent,
      "image": "lib/images/SmoothieLemon.png"
    },
    {
      "id": 5,
      "name": "Orange Smoothie",
      "description": "Orange Zest",
      "price": 24.0,
      "stock": 7,
      "color": Colors.orange,
      "image": "lib/images/SmoothieOrange.png"
    },
    {
      "id": 6,
      "name": "Strawberry Smoothie",
      "description": "Berry Bliss",
      "price": 26.0,
      "stock": 11,
      "color": Colors.pink,
      "image": "lib/images/SmoothieStrawberry.png"
    },
    {
      "id": 7,
      "name": "Watermelon Smoothie",
      "description": "Summer Refresh",
      "price": 27.0,
      "stock": 10,
      "color": Colors.red,
      "image": "lib/images/SmoothieWatermelon.png"
    },
    {
      "id": 8,
      "name": "Tropical Smoothie",
      "description": "Tropical Mix",
      "price": 29.0,
      "stock": 6,
      "color": Colors.orangeAccent,
      "image": "lib/images/SmoothieBanana.png"
    },
  ];

  SmoothiesTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothiesOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        final smoothie = smoothiesOnSale[index];
        return DonutTile(
          donutFlavor: smoothie["name"],
          donutStore: smoothie["description"],
          donutPrice: smoothie["price"].toString(),
          donutColor: smoothie["color"],
          imageName: smoothie["image"],
          onAddToCart: () {
            addToCart(Product(
              id: smoothie["id"],
              name: smoothie["name"],
              price: smoothie["price"],
              stock: smoothie["stock"],
            ));
          },
        );
      },
    );
  }
}
