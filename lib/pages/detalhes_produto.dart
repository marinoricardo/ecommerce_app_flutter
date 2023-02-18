// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_brace_in_string_interps, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/produto_model.dart';
import '../provider/produtos_provider.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({Key? key}) : super(key: key);

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    Produto args = ModalRoute.of(context)!.settings.arguments as Produto;
    // var args = ModalRoute.of(context)!.settings.arguments;
    // print(args);
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(230),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Hero(
                  child: Image.network(
                    args.image!,
                  ),
                  tag: args.id!,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        args.name!,
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${args.price!.toString()} Meticais',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Descricao do Produto',
                                    style: TextStyle(
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                                Table(
                                  border: TableBorder.all(
                                      color: Colors.black, width: 1.5),
                                  children: const [
                                    TableRow(children: [
                                      Center(
                                        child: Text(
                                          "Material",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Mohit",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Center(
                                        child: Text(
                                          "Color",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Mohit",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Center(
                                        child: Text(
                                          "Intesidade",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Mohit",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Center(
                                        child: Text(
                                          "Material",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Mohit",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      Center(
                                        child: Text(
                                          "Material",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "Mohit",
                                          style: TextStyle(fontSize: 15.0),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Provider.of<ProdutosProvider>(context, listen: false)
                              .addProduto(args);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(55, 55, 188, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        icon: Icon(
                          Icons.shopping_cart,
                        ),
                        label: Text(
                          'Adicionar ao Carinho',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 10,
            left: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
