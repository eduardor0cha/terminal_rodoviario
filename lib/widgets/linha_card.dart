import 'package:flutter/material.dart';

import '../domain/linha.dart';
import '../utils/app_colors.dart';
import '../utils/formatador_numero.dart';

class LinhaCard extends StatefulWidget {
  final Linha linha;

  const LinhaCard({
    Key? key,
    required this.linha,
  }) : super(key: key);

  @override
  State<LinhaCard> createState() => _LinhaCardState();
}

class _LinhaCardState extends State<LinhaCard> {
  Linha get linha => widget.linha;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: CoresApp.white,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${linha.pontoA} - ${linha.pontoB}",
              style: TextStyle(
                color: CoresApp.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.schedule),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: buildHorarios(linha.horarios),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(Icons.payments),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "R\$ ${FormatadorNumero.paraMonetario(linha.valor)}",
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Text> buildHorarios(List<String> horarios) {
    List<Text> hrs = [];
    for (String horario in horarios) {
      hrs.add(Text(
        horario,
        style: const TextStyle(fontSize: 18),
      ));
    }
    return hrs;
  }
}
