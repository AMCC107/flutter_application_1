import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(Product) addToCart;

  final List pizzasOnSale = [
    [1, "Chili Pizza", "Spicy Slice", 70.0, 10, Colors.red, "lib/images/PizzaChili.png"],
    [2, "Deluxe Pizza", "Gourmet Pizzas", 85.0, 8, Colors.orange, "lib/images/PizzaDeluxe.png"],
    [3, "Meat Lovers", "Carnivore Corner", 80.0, 12, Colors.brown, "lib/images/PizzaMeat.png"],
    [4, "Pepperoni Pizza", "Pepperoni Palace", 75.0, 15, Colors.redAccent, "lib/images/PizzaPepperoni.png"],
    [5, "Pineapple Pizza", "Tropical Bites", 65.0, 9, Colors.yellow, "lib/images/PizzaPineapple.png"],
    [6, "Shrimp Pizza", "Seafood Delight", 90.0, 6, Colors.teal, "lib/images/PizzaShrimp.png"],
    [7, "Tomato Pizza", "Tomato Heaven", 60.0, 13, Colors.red, "lib/images/PizzaTomato.png"],
    [8, "Vegetarian Pizza", "Green Slice", 68.0, 11, Colors.green, "lib/images/PizzaVegetarian.png"],
  ];

  PizzaTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        final pizza = pizzasOnSale[index];
        return DonutTile(
          donutFlavor: pizza[1],
          donutStore: pizza[2],
          donutPrice: pizza[3].toString(),
          donutColor: pizza[5],
          imageName: pizza[6],
          onAddToCart: () {
            addToCart(Product(
              id: pizza[0],
              name: pizza[1],
              price: pizza[3],
              stock: pizza[4],
            ));
          },
        );
      },
    );
  }
}
