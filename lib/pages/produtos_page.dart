// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_app_flutter/pages/home_page.dart';
import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:ecommerce_app_flutter/views/produtos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/produto_model.dart';

class ProdutosPage extends StatefulWidget {
  @override
  State<ProdutosPage> createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  // final List<Produto> produtos = [];
  @override
  void initState() {
    super.initState();

    Provider.of<ProdutosProvider>(context, listen: false).getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ProdutosProvider>(
            builder: ((context, value, child) {
              // print('olaa');
              // print(value.allproducts.length);
              return value.allproducts.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                      // child: Text(
                      //   'Nao ha produtos disponiveis.',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //   ),
                    )
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            mainAxisSpacing: 20.0,
                            crossAxisSpacing: 20.0,
                          ),
                          itemCount: value.allproducts.length,
                          itemBuilder: (context, index) {
                            return Produtos(
                              press: () {},
                              produto: value.allproducts[index],
                            );
                          },
                        ),
                      ),
                    );
            }),
          ),
        ],
      ),
    );
  }
}
