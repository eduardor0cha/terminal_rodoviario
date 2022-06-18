import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/widgets/linha_card.dart';

import '../domain/linha.dart';
import '../domain/viacao.dart';
import '../utils/app_colors.dart';
import '../widgets/barra_navegacao.dart';
import 'linhas_e_horarios.dart';

class DetalhesLinhasEHorarios extends StatefulWidget {
  final Viacao viacao;

  const DetalhesLinhasEHorarios({
    Key? key,
    required this.viacao,
  }) : super(key: key);

  @override
  State<DetalhesLinhasEHorarios> createState() =>
      _DetalhesLinhasEHorariosState();
}

class _DetalhesLinhasEHorariosState extends State<DetalhesLinhasEHorarios> {
  Viacao get viacao => widget.viacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppBar(
            backgroundColor: Colors.transparent,
            systemOverlayStyle: null,
            elevation: 0,
            leading: ElevatedButton(
              child: const Icon(Icons.close),
              onPressed: () => Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      const LinhasEHorarios(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                primary:
                    CoresApp.lightRed, // <-- Button color/ <-- Splash color
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: <Widget>[
                    Text(
                      viacao.nome,
                      style: TextStyle(
                        fontSize: 22,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = CoresApp.black,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      viacao.nome,
                      style: TextStyle(
                        fontSize: 22,
                        color: CoresApp.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(viacao.imagem),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 8),
              children: buildLinhaCards(viacao.linhas),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BarraNavegacao(index: 2),
    );
  }

  List<LinhaCard> buildLinhaCards(List<Linha> linhas) {
    List<LinhaCard> cards = [];
    for (Linha linha in linhas) {
      cards.add(LinhaCard(linha: linha));
    }
    return cards;
  }
}
