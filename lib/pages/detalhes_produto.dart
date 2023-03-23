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
    Produto? args = ModalRoute.of(context)?.settings.arguments as Produto;
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            args.name!,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${args.price!.toString()} Meticais',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Table(
                      border: TableBorder.all(color: Colors.black, width: 1.5),
                      children: const [
                        TableRow(children: [
                          Center(
                            child: Text(
                              "Nome produto",
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
                              "Marca",
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
                              "Serve para os seguintes veiculos",
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
                              "Fabricante",
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
                              "Ano de Fabrico",
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
                              "Numero do Modelo",
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
                              "Dimensoes",
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
                              "Peso",
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
