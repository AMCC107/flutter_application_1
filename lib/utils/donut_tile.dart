import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutStore;
  //dynamic no es un tipo de dato exacto, nos sirve para el color
  final dynamic donutColor;
  final String imageName;
  final VoidCallback onAddToCart;
  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutStore,
    this.donutColor,
    required this.imageName,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //price tag
            Row(
              //alinear a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    "\$$donutPrice",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: donutColor[800]),
                  ),
                ),
              ],
            ),
            //donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            //donut flavor text
            Text(donutFlavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(donutStore,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9)),
            //espacio entre texto
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, right: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Lógica para favoritos
                    },
                    child: Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: onAddToCart,
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            )

            //todo:
            //buttons
          ],
        ),
      ),
    );
  }
}
