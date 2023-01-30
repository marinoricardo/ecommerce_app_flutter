// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unnecessary_brace_in_string_interps

import 'package:ecommerce_app_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('${args.name}'),
        backgroundColor: Color.fromARGB(235, 16, 24, 95),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 223, 228, 228),
            ),
            height: 320,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              '${args.image}',
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Container(
              alignment: Alignment.bottomLeft,
              // margin: EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(
                    '${args.name} - ${args.price} Meticais',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.all(24),
              child: ElevatedButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(235, 16, 24, 95))),
                onPressed: () {},
                child: Text('Adicionar ao Carrinho'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
