// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetalhesProduto extends StatefulWidget {
  const DetalhesProduto({Key? key}) : super(key: key);

  @override
  State<DetalhesProduto> createState() => _DetalhesProdutoState();
}

class _DetalhesProdutoState extends State<DetalhesProduto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes do Produto'),
        backgroundColor: Color.fromARGB(235, 16, 24, 95),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'images/produto6.png',
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
                    'Nome do Produto - 530 Meticais',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English.',
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
