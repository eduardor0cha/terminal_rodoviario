import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';

import '../domain/viacao.dart';
import '../pages/detalhes_linhas_e_horarios.dart';

class ViacaoCard extends StatefulWidget {
  final Viacao viacao;

  const ViacaoCard({
    Key? key,
    required this.viacao,
  }) : super(key: key);

  @override
  State<ViacaoCard> createState() => _ViacaoCardState();
}

class _ViacaoCardState extends State<ViacaoCard> {
  Viacao get viacao => widget.viacao;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: CoresApp.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    viacao.nome,
                    style: TextStyle(
                      color: CoresApp.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        DetalhesLinhasEHorarios(
                                  viacao: viacao,
                                ),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            ),
                          },
                      icon: const Icon(Icons.open_in_new))
                ],
              ),
            ),
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(8)),
              child: Image.network(viacao.imagem),
            ),
          ],
        ),
      ),
    );
  }
}
