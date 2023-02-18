import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/produto_model.dart';
import 'package:http/http.dart' as http;

class ProdutosProvider extends ChangeNotifier {
  final List<Produto> allproducts = [];
  final List<Produto> _produtos = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_produtos);

  void addProduto(Produto produto) {
    _produtos.add(produto);
    notifyListeners();
  }

  void clearProdutos() {
    // print(jsonEncode(_produtos));
    _produtos.clear();
    notifyListeners();
  }

  double totalPrice() {
    double total = 0;

    for (var item in produtos) {
      total += item.price!;
    }

    return total;
  }

  Future<bool> getAllProducts() async {
    var url = Uri.parse('https://carros.dreamgate.co.mz/public/api/products');

    var response = await http.get(url);
    allproducts.clear();
    if (response.statusCode == 200) {
      var dados = jsonDecode(response.body);
      var dadosAux = dados['data'] as List;
      // print('dadps');
      // print(dados);

      for (var item in dadosAux) {
        var product = Produto.fromJson(item);
        allproducts.add(product);
      }
      notifyListeners();
      return true;
    } else {
      notifyListeners();
      throw Exception('Failed to load album');
    }
  }
}
