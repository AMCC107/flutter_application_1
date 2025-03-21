import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
  final List pancakesOnSale = [
    [
      "Banana Pancakes",
      "Sweet Morning",
      "35",
      Colors.yellow,
      "lib/images/PancakeBanana.png"
    ],
    [
      "Blackberry Pancakes",
      "Berry Delight",
      "40",
      Colors.purple,
      "lib/images/PancakeBlackberry.png"
    ],
    [
      "Blueberry Pancakes",
      "Blueberry Bliss",
      "42",
      Colors.blue,
      "lib/images/PancakeBluekberry.png"
    ],
    [
      "Cherry Pancakes",
      "Cherry Top",
      "38",
      Colors.red,
      "lib/images/PancakeCherry.png"
    ],
    [
      "Double Pancakes",
      "Double Trouble",
      "50",
      Colors.orange,
      "lib/images/PancakeDouble.png"
    ],
    [
      "Extra Fluffy Pancakes",
      "Fluffy Heaven",
      "45",
      Colors.pink,
      "lib/images/PancakeExtra.png"
    ],
    [
      "Jelly Pancakes",
      "Jelly Joy",
      "37",
      Colors.pink,
      "lib/images/PancakeJelly.png"
    ],
    [
      "Simple Pancakes",
      "Classic Bites",
      "30",
      Colors.brown,
      "lib/images/PancakeSimple.png"
    ],
  ];

  PanCakesTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: pancakesOnSale.length,
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
              donutFlavor: pancakesOnSale[index][0],
              donutStore: pancakesOnSale[index][1],
              donutPrice: pancakesOnSale[index][2].toString(),
              donutColor: pancakesOnSale[index][3],
              imageName: pancakesOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(pancakesOnSale[index][2]);
                addToCart(Product(
                  name: pancakesOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
