import 'package:flutter/material.dart';

import '../../../models/produto_model.dart';

class CarrinhoTile extends StatelessWidget {
  final Produto produto;
  const CarrinhoTile({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text(
          produto.name!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
          ),
        ),
        subtitle: Text(
          '${produto.price.toString()} Meticais',
          style: const TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        // trailing: Text('120 Mts'),
        leading: Image.network(
          produto.image!,
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
