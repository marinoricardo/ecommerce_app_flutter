// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:ecommerce_app_flutter/pages/produtos_page.dart';
import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:ecommerce_app_flutter/pages/carrinho/carinho.dart';
import 'package:ecommerce_app_flutter/views/produtos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int pageSelect = 0;

  @override
  Widget build(BuildContext context) {
    late ProdutosProvider prod = context.watch<ProdutosProvider>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 228, 228),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 90,
        title: Image.asset(
          'images/logo.png',
          height: 300,
          width: 400,
        ),
        backgroundColor: Color.fromRGBO(55, 55, 188, 1),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          ProdutosPage(),
          const Carinho(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageSelect,
          onTap: (int page) {
            setState(() {
              pageSelect = page;
            });
            _pageController.animateToPage(page,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withAlpha(100),
          backgroundColor: Color.fromRGBO(55, 55, 188, 1),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                label: "Produtos"),
            BottomNavigationBarItem(
                icon: Badge(
                  badgeContent: Text(prod.produtos.length.toString()),
                  badgeColor: Colors.white,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                label: "Carinho"),
          ]),
    );
  }
}
