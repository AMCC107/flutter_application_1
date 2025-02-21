import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas 
  final List donutsOnSale = [

   // [ donutFlavor, donutPrice, donutColor, imageName ]

   ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
]; 
DonutTab({super.key});

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
        crossAxisCount: 2, // Cuántos elementos por fila
        childAspectRatio: 1.5, // Relación de aspecto de los elementos
      ),
      itemBuilder: (context, index){
        //Cada elemento individual
        return DonutTile (
        donutPrice: donutsOnSale[index][1],
        donutColor: donutsOnSale[index][2],
        imageName: donutsOnSale[index][3],
        donutFlavor: donutsOnSale [index][0],
         // Título de la dona (flavors.dart))
        )
      } {
    ) ; 
  }
}