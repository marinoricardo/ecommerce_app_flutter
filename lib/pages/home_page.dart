// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:badges/badges.dart' as badges;
import 'package:ecommerce_app_flutter/pages/perfil/perfil_page.dart';
import 'package:ecommerce_app_flutter/pages/produtos/produtos_page.dart';
import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:ecommerce_app_flutter/pages/carrinho/carinho.dart';
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
        actions: [],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          ProdutosPage(),
          const Carinho(),
          PerfilPage(),
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: "Produtos",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: "Carinho",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Perfil",
            ),
          ]),
    );
  }
}
