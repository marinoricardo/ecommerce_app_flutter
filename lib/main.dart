// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app_flutter/pages/produtos/detalhes_produto.dart';
import 'package:ecommerce_app_flutter/pages/home_page.dart';
import 'package:ecommerce_app_flutter/pages/splash_page.dart';
import 'package:ecommerce_app_flutter/provider/produtos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProdutosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Color.fromARGB(235, 16, 24, 95),
        ),
        initialRoute: '/home',
        routes: {
          '/splash': ((context) => const SplashPage()),
          '/home': ((context) => const HomePage()),
          '/detalhesproduto': ((context) => const DetalhesProduto()),
        },
      ),
    );
  }
}
