// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:ecommerce_app_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class Produtos extends StatelessWidget {
  final Produto produto;
  final Function press;
  const Produtos({Key? key, required this.produto, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (() {
          print("clicou");
          print(produto.image);
        }),
        child: Column(
          children: [
            Container(
              height: 180,
              // width: 160,
              // padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color.fromARGB(255, 223, 228, 228),
              ),
              child: Image.asset(
                produto.image!,
                height: 300,
                width: 300,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Text(
                produto.name!,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(235, 16, 24, 95),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [Icon(Icons.shopping_cart)],
            // )
          ],
        ),
      ),
    );
  }
}
