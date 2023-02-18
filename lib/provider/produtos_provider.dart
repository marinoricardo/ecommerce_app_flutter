import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class ProdutosProvider extends ChangeNotifier {
  final List<Produto> _produtos = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_produtos);

  void addProduto(Produto produto) {
    _produtos.add(produto);
    notifyListeners();
  }

  void clearProdutos() {
    // _produtos.clear();
    notifyListeners();
  }

  double totalPrice() {
    double total = 0;

    for (var item in produtos) {
      total += item.price!;
    }

    return total;
  }
}
