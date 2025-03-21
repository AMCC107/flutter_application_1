import 'package:flutter_application_1/utils/donut_tile.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(Product) addToCart;
//listas de donas
  final List pizzasOnSale = [
    [
      "Chili Pizza",
      "Spicy Slice",
      "70",
      Colors.red,
      "lib/images/PizzaChili.png"
    ],
    [
      "Deluxe Pizza",
      "Gourmet Pizzas",
      "85",
      Colors.orange,
      "lib/images/PizzaDeluxe.png"
    ],
    [
      "Meat Lovers",
      "Carnivore Corner",
      "80",
      Colors.brown,
      "lib/images/PizzaMeat.png"
    ],
    [
      "Pepperoni Pizza",
      "Pepperoni Palace",
      "75",
      Colors.redAccent,
      "lib/images/PizzaPepperoni.png"
    ],
    [
      "Pineapple Pizza",
      "Tropical Bites",
      "65",
      Colors.yellow,
      "lib/images/PizzaPineapple.png"
    ],
    [
      "Shrimp Pizza",
      "Seafood Delight",
      "90",
      Colors.teal,
      "lib/images/PizzaShrimp.png"
    ],
    [
      "Tomato Pizza",
      "Tomato Heaven",
      "60",
      Colors.red,
      "lib/images/PizzaTomato.png"
    ],
    [
      "Vegetarian Pizza",
      "Green Slice",
      "68",
      Colors.green,
      "lib/images/PizzaVegetarian.png"
    ],
  ];

  PizzaTab({super.key, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //cuantos elementos hay en la rejilla
        itemCount: pizzasOnSale.length,
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
              donutFlavor: pizzasOnSale[index][0],
              donutStore: pizzasOnSale[index][1],
              donutPrice: pizzasOnSale[index][2].toString(),
              donutColor: pizzasOnSale[index][3],
              imageName: pizzasOnSale[index][4],
              onAddToCart: () {
                double price = double.parse(pizzasOnSale[index][2]);
                addToCart(Product(
                  name: pizzasOnSale[index][0],
                  price: price,
                ));
              });
        });
  }
}
