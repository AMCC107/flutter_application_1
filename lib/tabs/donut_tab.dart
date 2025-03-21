import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(Product) addToCart;

//listas de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    // Originales (4)
    [
      "Ice Cream",
      "Krispy Kreme",
      "36.0",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    ["Strawberry", "Donky Donuts", "45", Colors.red, "lib/images/Donut1.png"],
    ["Grape Ape", "Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],

    // Nuevos (4)
    [
      "Caramel Swirl",
      "Dunkin' Donuts",
      "28",
      Colors.orange,
      "lib/images/Donut1.png"
    ],
    [
      "Blueberry Blast",
      "Mister Donut",
      "52",
      Colors.green,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Vanilla Dream",
      "Tim Hortons",
      "67",
      Colors.pink,
      "lib/images/grape_donut.png"
    ],
    [
      "Cookie Crunch",
      "La Donutería",
      "79",
      Colors.teal,
      "lib/images/chocolate_donut.png"
    ],
  ];

  DonutTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12),
        // Preparatoria 1. cómo se distribuirán los elementos
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //para decir cuantas columnas usará
          crossAxisCount: 2,
          //relación de aspecto (proporción)
          childAspectRatio: 1 / 1.5,
        ),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutStore: donutsOnSale[index][1],
              donutPrice: donutsOnSale[index][2].toString(),
              donutColor: donutsOnSale[index][3],
              imageName: donutsOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(donutsOnSale[index][2]);
                addToCart(Product(
                  name: donutsOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
