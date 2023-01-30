// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_flutter/pages/produtos_page.dart';
import 'package:ecommerce_app_flutter/views/carinho.dart';
import 'package:ecommerce_app_flutter/views/produtos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int pageSelect = 0;

  final List<Produto> produtos = [
    Produto(name: "Oleo", price: "144", image: 'images/produto1.png'),
    Produto(name: "Produto 2", price: "944", image: 'images/produto.png'),
    Produto(name: "Produto 1", price: "1244", image: 'images/produto3.png'),
    Produto(name: "Produto 5", price: "1204", image: 'images/produto4.png'),
    Produto(name: "Produto 1", price: "1244", image: 'images/produto5.png'),
    Produto(name: "Produto 10", price: "9244", image: 'images/produto6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        title: Image.asset(
          'images/logo.png',
          height: 200,
          width: 400,
        ),
        backgroundColor: Color.fromARGB(235, 16, 24, 95),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.shopping_cart_outlined,
        //         size: 25,
        //       ))
        // ],
      ),
      body: PageView(
        controller: _pageController,
        children: [ProdutosPage(), Carinho()],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Color.fromARGB(235, 16, 24, 95),
      //   child: Icon(Icons.search),
      // ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageSelect,
          // fixedColor: Color.fromARGB(235, 124, 124, 124),
          // backgroundColor: Color.fromARGB(235, 32, 49, 205),
          onTap: (int page) {
            setState(() {
              pageSelect = page;
            });
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          selectedItemColor: Color.fromARGB(235, 16, 24, 95),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 25,
                ),
                label: "Produtos"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 25,
                ),
                label: "Carinho"),
          ]),
    );
  }
}

class Produto {
  final String? name;
  final String? price;
  final String? image;

  Produto({required this.name, this.price, this.image});
}
