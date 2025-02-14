import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/burger_tab.dart';
import 'package:flutter_application_1/tabs/donut_tab.dart';
import 'package:flutter_application_1/tabs/pancakes_tab.dart';
import 'package:flutter_application_1/tabs/pizza_tab.dart';
import 'package:flutter_application_1/tabs/smoothie_tab.dart';
import 'package:flutter_application_1/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>myTabs=[
    const MyTab(iconPath:"lib/icons/donut.png"),
    const MyTab(iconPath:"lib/icons/burger.png"),
    const MyTab(iconPath:"lib/icons/smoothie.png"),
    const MyTab(iconPath:"lib/icons/pancakes.png"),
    const MyTab(iconPath:"lib/icons/pizza.png")
    ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // Icono izquierdo
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body:  Column(
          children: [
            // Texto Principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:36,vertical:18),
              child: Row(
                children: [
                  Text("I want to ", 
                  style:TextStyle(fontSize : 32)),
                  Text(
                    "Eat",
                    style: TextStyle(
                      // Tamaño de letra
                      fontSize: 32.0,
                      // Negritas
                      fontWeight: FontWeight.bold,
                      // Subrayado
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // 
            //Pestañas (TabBar)
            TabBar(tabs:myTabs),
            //Contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(children:[
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab()
              ]
              //Carrito (Cart)
                        ,
            ))],
        ),
      ),
    );
  }
}

