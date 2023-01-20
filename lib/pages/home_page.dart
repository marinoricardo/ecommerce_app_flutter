// ignore_for_file: prefer_const_constructors

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
    );
  }
}
