// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Carinho extends StatefulWidget {
  const Carinho({Key? key}) : super(key: key);

  @override
  State<Carinho> createState() => _CarinhoState();
}

class _CarinhoState extends State<Carinho> {
  final List<String> entries = <String>['Produto 1', 'Produto 2', 'Produto 3'];
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: ListView.separated(
        itemCount: entries.length,
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(entries[index]),
            subtitle: Text('Quantidade: 3'),
            trailing: Text('120 Mts'),
            leading: Image.asset(
              'images/produto6.png',
              height: 90,
            ),
          );
        }),
        separatorBuilder: ((context, index) => const Divider(
              height: 2,
            )),
      ),
    );
  }
}
