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
          children: [
            buildImage(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.pesquisa.pergunta,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(8),
          ),
          child: Image.network(widget.pesquisa.imagem),
        ),
        Container(
          child: const Text(
            'Qual o seu destino?',
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          decoration: const BoxDecoration(
            color: Color(0xFFA9A9A9),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
      ],
    );
  }
}
