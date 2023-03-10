import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/produto_model.dart';

class Produtos extends StatelessWidget {
  final Produto produto;
  final Function press;
  const Produtos({Key? key, required this.produto, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed('/detalhesproduto', arguments: produto);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Hero(
                      tag: produto.id!,
                      child: Image.network(
                        produto.image!,
                      ),
                    ),
                  ),
                  Text(
                    produto.name!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${produto.price!.toString()} Meticais',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(55, 55, 188, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              Provider.of<ProdutosProvider>(context, listen: false)
                  .addProduto(produto);
            },
            child: Container(
              height: 40,
              width: 35,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(55, 55, 188, 1),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
