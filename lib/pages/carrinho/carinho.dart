// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_flutter/pages/carrinho/components/carrinho_tile.dart';
import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Carinho extends StatefulWidget {
  const Carinho({Key? key}) : super(key: key);

  @override
  State<Carinho> createState() => _CarinhoState();
}

class _CarinhoState extends State<Carinho> {
  final List<String> entries = <String>['Produto 1', 'Produto 2', 'Produto 3'];
  late ProdutosProvider carinho;
  @override
  Widget build(BuildContext context) {
    late ProdutosProvider prod = context.watch<ProdutosProvider>();
    return Column(
      children: [
        Expanded(
          // color: Colors.amber,
          child: Consumer<ProdutosProvider>(
            builder: (context, value, child) {
              return value.produtos.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.shopping_cart,
                            size: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'O carrinho está vazio',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                      itemCount: value.produtos.length,
                      itemBuilder: ((context, index) {
                        return CarrinhoTile(
                          produto: value.produtos[index],
                        );
                      }),
                      separatorBuilder: ((context, index) => const Divider(
                            height: 2,
                          )),
                    );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Total  ${prod.totalPrice()} Meticais',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Provider.of<ProdutosProvider>(context, listen: false)
                        .clearProdutos();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(55, 55, 188, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    'Finalizar a compra',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
