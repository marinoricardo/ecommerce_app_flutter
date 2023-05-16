// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_brace_in_string_interps, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/produto_model.dart';
import '../../provider/produtos_provider.dart';

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
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
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
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${args.price!.toString()} Meticais',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Text(args.description!),
                    Text(
                      'Descrição' * 30,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(55, 55, 188, 1),
                      ),
                      icon: const Icon(
                        Icons.add_shopping_cart,
                      ),
                      label: Text(
                        'Adicionar ao Carinho'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
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
