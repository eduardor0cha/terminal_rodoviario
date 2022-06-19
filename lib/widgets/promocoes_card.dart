import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';

import '../domain/opcao.dart';
import '../utils/app_colors.dart';
import '../utils/formatador_numero.dart';

class PromocoesCard extends StatefulWidget {
  final Opcao opcao;

  const PromocoesCard({Key? key, required this.opcao}) : super(key: key);

  @override
  State<PromocoesCard> createState() => _PromocoesCardState();
}

class _PromocoesCardState extends State<PromocoesCard> {
  Opcao get opcao => widget.opcao;

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
            buildImage(),
            Row(
              children: [
                const Icon(
                  Icons.explore_outlined,
                  size: 30,
                ),
                const SizedBox(width: 4),
                Text(
                  opcao.destino,
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
                      opcao.data,
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
                      opcao.horario,
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
              opcao.viacao,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'R\$ ${FormatadorNumero.paraMonetario(opcao.valor)}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              'Desconto de R\$ ${opcao.desconto} .00',
              style: TextStyle(
                color: CoresApp.green,
                fontSize: 18,
              ),
            ),
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
            bottom: Radius.circular(8),
          ),
          child: Image.network(widget.opcao.imagem),
        ),
      ],
    );
  }
}
