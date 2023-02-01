// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app_flutter/pages/home_page.dart';
import 'package:ecommerce_app_flutter/views/produtos.dart';
import 'package:flutter/material.dart';

class ProdutosPage extends StatelessWidget {
  // const ProdutosPage({Key? key}) : super(key: key);

  final List<Produto> produtos = [
    Produto(
      name: "Oleo",
      price: "144",
      image: 'images/produto4.png',
      color: Colors.amber,
    ),
    Produto(
      name: "Produto 2",
      price: "944",
      image: 'images/produto.png',
      color: Colors.red,
    ),
    Produto(
      name: "Produto 1",
      price: "1244",
      image: 'images/produto3.png',
      color: Colors.red,
    ),
    Produto(name: "Produto 5", price: "1204", image: 'images/produto4.png'),
    Produto(name: "Produto 5", price: "1204", image: 'images/invite1.png'),
    Produto(name: "Produto 1", price: "1244", image: 'images/produto5.png'),
    Produto(name: "Produto 10", price: "9244", image: 'images/produto6.png'),
    Produto(name: "Oleo", price: "144", image: 'images/produto1.png'),
    Produto(name: "Produto 2", price: "944", image: 'images/produto.png'),
    Produto(name: "Produto 1", price: "1244", image: 'images/produto3.png'),
    Produto(name: "Produto 5", price: "1204", image: 'images/produto4.png'),
    Produto(name: "Produto 5", price: "1204", image: 'images/produto4.png'),
    Produto(name: "Produto 1", price: "1244", image: 'images/produto5.png'),
    Produto(name: "Produto 10", price: "9244", image: 'images/produto6.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'Todos os Produtos',
          //         style: TextStyle(
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Color.fromARGB(235, 16, 24, 95),
          //         ),
          //       ),
          //       // Icon(Icons.search)
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: 'Pesquise o seu produto..',
          //       suffixIcon: Icon(Icons.search),
          //     ),
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: produtos.isEmpty
                  ? Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 50,
                        ),
                        Text('Processando.. Por favor aguarde!')
                      ],
                    ))
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        // mainAxisSpacing: 20,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                      ),
                      itemCount: produtos.length,
                      itemBuilder: (context, index) => Produtos(
                        produto: produtos[index],
                        press: () {},
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
