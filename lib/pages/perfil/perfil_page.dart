// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Marino Ricardo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text('marinoricardo@gmail.com')
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: Icon(
                      Icons.shop,
                    ),
                    title: Text('Minhas Encomendas'),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
                itemCount: 2,
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
