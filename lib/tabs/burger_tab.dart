import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_application_1/utils/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
  final List burgersOnSale = [
    [
      "Classic Burger",
      "Burger House",
      "45",
      Colors.orange,
      "lib/images/Burger.png"
    ],
    [
      "Bacon Cheeseburger",
      "Grill Masters",
      "55",
      Colors.red,
      "lib/images/BurgerBacon.png"
    ],
    [
      "Double Cheeseburger",
      "Cheesy Bites",
      "65",
      Colors.yellow,
      "lib/images/BurgerDoubleCheese.png"
    ],
    [
      "Egg Burger",
      "Morning Bites",
      "50",
      Colors.amber,
      "lib/images/BurgerEgg.png"
    ],
    [
      "Fries Burger",
      "Crispy Corner",
      "60",
      Colors.brown,
      "lib/images/BurgerFries.png"
    ],
    [
      "Simple Burger",
      "Minimalist Grill",
      "40",
      Colors.cyan,
      "lib/images/BurgerSimple.png"
    ],
    [
      "Spicy Burger",
      "Hot & Spicy",
      "58",
      Colors.deepOrange,
      "lib/images/Burger.png"
    ],
    [
      "Veggie Burger",
      "Green Bites",
      "48",
      Colors.green,
      "lib/images/BurgerSimple.png"
    ],
  ];

  BurgerTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: burgersOnSale.length,
        padding: EdgeInsets.all(12),
        // Preparatoria 1. cómo se distribuirán los elementos
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //para decir cuantas columnas usará
          crossAxisCount: 2,
          //relación de aspecto (proporción)
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          //cada elemento individual
          return DonutTile(
              donutFlavor: burgersOnSale[index][0],
              donutStore: burgersOnSale[index][1],
              donutPrice: burgersOnSale[index][2].toString(),
              donutColor: burgersOnSale[index][3],
              imageName: burgersOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(burgersOnSale[index][2]);
                addToCart(Product(
                  name: burgersOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
