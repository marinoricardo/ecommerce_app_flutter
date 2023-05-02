// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  PerfilPage({super.key});

  // List definicoes = [(Icons.settings, "Definicoes"), (Icons.settings, "Definicoes")];

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
                    width: 130,
                    height: 130,
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
            ProfileMenu(
              titulo: 'Minhas Encomendas',
              icon: Icons.shop,
            ),
            ProfileMenu(
              titulo: 'Definições',
              icon: Icons.settings,
            ),
            ProfileMenu(
              titulo: 'Sair',
              icon: Icons.logout,
            )
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String titulo;
  final IconData icon;
  const ProfileMenu({
    super.key,
    required this.titulo,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(titulo),
      trailing: Icon(Icons.arrow_forward),
    );
  }
}
