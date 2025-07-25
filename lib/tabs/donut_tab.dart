import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(Product) addToCart;

  // Listas de donas [flavor, store, price, color, imagePath]
  final List<List<dynamic>> donutsOnSale = [
    ["Ice Cream", "Krispy Kreme", 36.0, Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Donky Donuts", 45.0, Colors.red, "lib/images/Donut1.png"],
    ["Grape Ape", "Aurrerá", 84.0, Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Costco", 95.0, Colors.brown, "lib/images/chocolate_donut.png"],
    ["Caramel Swirl", "Dunkin' Donuts", 28.0, Colors.orange, "lib/images/Donut1.png"],
    ["Blueberry Blast", "Mister Donut", 52.0, Colors.green, "lib/images/strawberry_donut.png"],
    ["Vanilla Dream", "Tim Hortons", 67.0, Colors.pink, "lib/images/grape_donut.png"],
    ["Cookie Crunch", "La Donutería", 79.0, Colors.teal, "lib/images/chocolate_donut.png"],
  ];

  DonutTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        final donut = donutsOnSale[index];
        return DonutTile(
          donutFlavor: donut[0],
          donutStore: donut[1],
          donutPrice: donut[2].toString(),
          donutColor: donut[3],
          imageName: donut[4],
          onAddToCart: () {
            addToCart(
              Product(
                id: index + 1, // ← puedes cambiar esto si tu backend tiene IDs reales
                name: donut[0],
                price: donut[2],
                stock:1.0
              ),
            );
          },
        );
      },
    );
  }
}
