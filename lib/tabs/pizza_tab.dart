import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  //Lista de donas 
  final List donutsOnSale = [

   // [ donutFlavor, donutPrice, donutColor, imageName ]

   ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry","Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape","Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco","Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
   ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry","Dunkin donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape","Aurrerá", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco","Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
]; 
PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget para usar cuadrícula 
    return GridView.builder(
      //Cuántos elementos hay en la rejilla?
      itemCount: donutsOnSale.length,
      padding:EdgeInsets.all(12),
      // Prepa 1.Cómo se distribuirán los elementos
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
        //Cuántas columnas
        crossAxisCount: 2,
         // Cuántos elementos por fila
        childAspectRatio: 1/1.5, // Relación de aspecto de los elementos
      ),
      itemBuilder: (context, index){
        //Cada elemento individual
        return DonutTile (
        donutFlavor: donutsOnSale [index][0],
        donutStore: donutsOnSale [index][1],
        donutPrice: donutsOnSale[index][2],
        donutColor: donutsOnSale[index][3],
        imageName: donutsOnSale[index][4]
        
         // Título de la dona (flavors.dart))
        );
      } 
    ) ; 
  }
}