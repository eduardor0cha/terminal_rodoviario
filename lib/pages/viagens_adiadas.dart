import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ViagemAdiadaCard(
            viagem: viagem1,
          ),
        ],
      ),
    );
  }
}
