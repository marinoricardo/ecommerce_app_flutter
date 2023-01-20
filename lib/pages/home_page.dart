// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Image.asset(
          'images/logo.png',
          height: 200,
          width: 400,
        ),
        backgroundColor: Color.fromARGB(235, 16, 24, 95),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // currentIndex: 1,
          onTap: (value) {},
          selectedItemColor: Color.fromARGB(235, 16, 24, 95),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Produtos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Carinho"),
          ]),
    );
  }
}
