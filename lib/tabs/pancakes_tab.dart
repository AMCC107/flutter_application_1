import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {
  final Function(Product) addToCart;

  // Lista de pancakes con: id, name, description, price, color, image, stock
  final List pancakesOnSale = [
    [1, "Banana Pancakes", "Sweet Morning", 35.0, Colors.yellow, "lib/images/PancakeBanana.png", 12],
    [2, "Blackberry Pancakes", "Berry Delight", 40.0, Colors.purple, "lib/images/PancakeBlackberry.png", 10],
    [3, "Blueberry Pancakes", "Blueberry Bliss", 42.0, Colors.blue, "lib/images/PancakeBluekberry.png", 8],
    [4, "Cherry Pancakes", "Cherry Top", 38.0, Colors.red, "lib/images/PancakeCherry.png", 15],
    [5, "Double Pancakes", "Double Trouble", 50.0, Colors.orange, "lib/images/PancakeDouble.png", 6],
    [6, "Extra Fluffy Pancakes", "Fluffy Heaven", 45.0, Colors.pink, "lib/images/PancakeExtra.png", 5],
    [7, "Jelly Pancakes", "Jelly Joy", 37.0, Colors.pink, "lib/images/PancakeJelly.png", 9],
    [8, "Simple Pancakes", "Classic Bites", 30.0, Colors.brown, "lib/images/PancakeSimple.png", 20],
  ];

  PanCakesTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        var pancake = pancakesOnSale[index];

        return DonutTile(
          donutFlavor: pancake[1], // name
          donutStore: pancake[2],  // description
          donutPrice: pancake[3].toString(), // price
          donutColor: pancake[4], // color
          imageName: pancake[5],  // image
          onAddToCart: () {
            addToCart(Product(
              id: pancake[0],
              name: pancake[1],
              price: pancake[3],
              stock: pancake[6],
            ));
          },
        );
      },
    );
  }
}
