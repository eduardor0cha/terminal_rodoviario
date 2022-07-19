import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/widgets/viacao_card.dart';

import '../domain/linha.dart';
import '../domain/viacao.dart';

class LinhasEHorarios extends StatefulWidget {
  const LinhasEHorarios({Key? key}) : super(key: key);

  @override
  State<LinhasEHorarios> createState() => _LinhasEHorariosState();
}

class _LinhasEHorariosState extends State<LinhasEHorarios> {
  final Viacao viacao1 = Viacao(
    nome: "Real Arapiraca",
    imagem:
        "https://brt.onibusbrasil.com/2015/2/1/p/42e5aa01929b5be3b2023f96961559cc.jpg",
    linhas: [
      Linha(
        pontoA: "IFAL",
        pontoB: "Terminal",
        horarios: [
          "07:00",
          "07:15",
          "08:00",
          "08:30",
        ],
        valor: 3.50,
      ),
      Linha(
        pontoA: "Shopping",
        pontoB: "Terminal",
        horarios: [
          "07:00",
          "07:15",
          "08:00",
          "08:30",
        ],
        valor: 4.00,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ViacaoCard(
          viacao: viacao1,
        ),
      ],
    );
  }
}
