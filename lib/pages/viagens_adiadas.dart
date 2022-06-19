import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';
import 'package:terminal_rodoviario/widgets/barra_navegacao.dart';
import 'package:terminal_rodoviario/widgets/viagens_adiadas_card.dart';

import '../domain/viagem.dart';

class ViagensAdiadas extends StatefulWidget {
  const ViagensAdiadas({Key? key}) : super(key: key);

  @override
  State<ViagensAdiadas> createState() => _ViagensAdiadasState();
}

class _ViagensAdiadasState extends State<ViagensAdiadas> {
  Viagem viagem1 = Viagem(
    destino: "Salvador - BA",
    dataAntiga: "03/06/22",
    data: "14/06/22",
    horarioAntigo: "09:00",
    horario: "20:00",
    valor: 240,
    viacao: "Viação Cometa",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: null,
            elevation: 0,
            title: Text(
              'Viagens Adiadas',
              style: TextStyle(color: CoresApp.black),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ViagemAdiadaCard(
              viagem: viagem1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarraNavegacao(
        index: 4,
      ),
    );
  }
}
