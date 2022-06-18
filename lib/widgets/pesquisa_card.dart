import 'package:flutter/cupertino.dart';
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
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            buildImage(),
          ],
        ),
      ),
    );
  }

  buildImage() {
    return Stack(
      alignment: FractionalOffset.bottomLeft,
      children: [
        ClipRRect(
          child: Image.network(widget.pesquisa.imagem),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Qual o seu destino?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.left,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: CoresApp.gray,
                  hintStyle: TextStyle(color: CoresApp.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Pesquise aqui...',
                  contentPadding: const EdgeInsets.only(left: 10),
                ),
              ),
            ],
          ),
          /*decoration: const BoxDecoration(
            color: Color(0xFFA9A9A9),
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),*/
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        ),
      ],
    );
  }
}
