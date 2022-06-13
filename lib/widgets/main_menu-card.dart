import 'package:flutter/material.dart';
import '../domain/pesquisa.dart';
import '../utils/app_colors.dart';

class MainMenuCard extends StatefulWidget {
  final Pesquisa pesquisa;

  const MainMenuCard({Key? key, required this.pesquisa}) : super(key: key);

  @override
  State<MainMenuCard> createState() => _MainMenuCardState();
}

class _MainMenuCardState extends State<MainMenuCard> {
  Pesquisa get pesquisa => widget.pesquisa;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CoresApp.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Image.network(pesquisa.imagem),
              ],
            ),
          ],
        ),
        ),
    );
  }
}
