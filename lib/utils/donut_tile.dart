import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  final dynamic donutColor; // Se mantiene dynamic
  final String imageName;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutStore,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(children: [
          // PriceTag
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                child: Text(
                  '\$$donutPrice',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: donutColor[800],
                  ),
                ),
              ),
            ],
          ),
          // Donut Picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Image.asset(imageName),
          ),
          // Donut Text
          Text(donutFlavor,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          // Espacio entre texto
          const SizedBox(height: 4),
          Text(donutStore,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 28,
                  color: Colors.black,
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
