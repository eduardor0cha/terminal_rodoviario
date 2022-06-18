import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';

import '../domain/viagem.dart';
import '../utils/app_colors.dart';
import '../utils/formatador_numero.dart';

class ViagemAdiadaCard extends StatefulWidget {
  final Viagem viagem;

  const ViagemAdiadaCard({Key? key, required this.viagem}) : super(key: key);

  @override
  State<ViagemAdiadaCard> createState() => _ViagemAdiadaCardState();
}

class _ViagemAdiadaCardState extends State<ViagemAdiadaCard> {
  Viagem get viagem => widget.viagem;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: CoresApp.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.explore_outlined,
                  size: 30,
                ),
                const SizedBox(width: 4),
                Text(
                  viagem.destino,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined),
                    const SizedBox(width: 4),
                    Text(
                      viagem.data,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.schedule_outlined),
                    const SizedBox(width: 4),
                    Text(
                      viagem.horario,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              viagem.viacao,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'R\$ ${FormatadorNumero.paraMonetario(viagem.valor)}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text('Cancelar'),
                style: ElevatedButton.styleFrom(
                  primary: CoresApp.lightRed,
                ),
              ),

            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () => {},
                child: const Text('Aceitar'),
                style: ElevatedButton.styleFrom(
                  primary: CoresApp.green,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
