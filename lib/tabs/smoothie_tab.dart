import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class SmoothiesTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
  final List smoothiesOnSale = [
    [
      "Banana Smoothie",
      "Fruity Blend",
      "25",
      Colors.yellow,
      "lib/images/SmoothieBanana.png"
    ],
    [
      "Avocado Smoothie",
      "Green Goodness",
      "30",
      Colors.green,
      "lib/images/SmoothieAvocado.png"
    ],
    [
      "Blueberry Smoothie",
      "Berry Boost",
      "28",
      Colors.blue,
      "lib/images/SmoothieBlueberry.png"
    ],
    [
      "Lemon Smoothie",
      "Citrus Splash",
      "22",
      Colors.yellowAccent,
      "lib/images/SmoothieLemon.png"
    ],
    [
      "Orange Smoothie",
      "Orange Zest",
      "24",
      Colors.orange,
      "lib/images/SmoothieOrange.png"
    ],
    [
      "Strawberry Smoothie",
      "Berry Bliss",
      "26",
      Colors.pink,
      "lib/images/SmoothieStrawberry.png"
    ],
    [
      "Watermelon Smoothie",
      "Summer Refresh",
      "27",
      Colors.red,
      "lib/images/SmoothieWatermelon.png"
    ],
    [
      "Tropical Smoothie",
      "Tropical Mix",
      "29",
      Colors.orangeAccent,
      "lib/images/SmoothieBanana.png"
    ],
  ];

  SmoothiesTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: smoothiesOnSale.length,
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
              donutFlavor: smoothiesOnSale[index][0],
              donutStore: smoothiesOnSale[index][1],
              donutPrice: smoothiesOnSale[index][2].toString(),
              donutColor: smoothiesOnSale[index][3],
              imageName: smoothiesOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(smoothiesOnSale[index][2]);
                addToCart(Product(
                  name: smoothiesOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
