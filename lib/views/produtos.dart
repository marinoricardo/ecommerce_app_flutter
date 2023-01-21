// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

class Produtos extends StatelessWidget {
  const Produtos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          // height: 100,
          // width: 200,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: InkWell(
            onTap: () {
              print('clicou um produto..');
            },
            child: Image.asset(
              'images/produto.png',
              height: 300,
              width: 300,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto1.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto6.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto3.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto1.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto4.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto5.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto6.png',
            height: 300,
            width: 300,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color.fromARGB(255, 223, 228, 228),
          ),
          child: Image.asset(
            'images/produto1.png',
            height: 300,
            width: 300,
          ),
        ),
      ],
    );
  }
}
