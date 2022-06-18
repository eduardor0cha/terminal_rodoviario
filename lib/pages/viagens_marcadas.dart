import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';
import 'package:terminal_rodoviario/widgets/barra_navegacao.dart';
import 'package:terminal_rodoviario/widgets/viagem_marcada_card.dart';

import '../domain/viagem.dart';

class ViagensMarcadas extends StatefulWidget {
  const ViagensMarcadas({Key? key}) : super(key: key);

  @override
  State<ViagensMarcadas> createState() => _ViagensMarcadasState();
}

class _ViagensMarcadasState extends State<ViagensMarcadas> {
  Viagem viagem1 = Viagem(
    destino: "Aracajú - SE",
    data: "21/06/2022",
    horario: "08:00",
    valor: 70,
    viacao: "Viação Catedral",
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
              'Viagens Marcadas',
              style: TextStyle(color: CoresApp.black),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ViagemMarcadaCard(
              viagem: viagem1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarraNavegacao(
        index: 3,
      ),
    );
  }
}
