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
    dataAntiga: "21/06/2022",
    data: "21/06/2022",
    horarioAntigo: "08:00",
    horario: "08:00",
    valor: 70,
    viacao: "Viação Catedral",
  );

  Viagem viagem2 = Viagem(
    destino: "Recife - PE",
    dataAntiga: "25/07/2022",
    data: "25/07/2022",
    horarioAntigo: "11:00",
    horario: "11:00",
    valor: 90,
    viacao: "Viação Estrela",
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          ViagemMarcadaCard(
            viagem: viagem1,
          ),
          ViagemMarcadaCard(
            viagem: viagem2,
          ),
        ],
      ),
    );
  }
}
