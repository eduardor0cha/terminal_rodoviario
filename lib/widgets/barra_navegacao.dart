import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/pages/linhas_e_horarios.dart';
import 'package:terminal_rodoviario/pages/pesquisa_pagina.dart';
import 'package:terminal_rodoviario/pages/promocoes.dart';
import 'package:terminal_rodoviario/pages/viagens_adiadas.dart';
import 'package:terminal_rodoviario/pages/viagens_marcadas.dart';

import '../utils/app_colors.dart';

class BarraNavegacao extends StatefulWidget {
  final int index;

  const BarraNavegacao({Key? key, required this.index}) : super(key: key);

  @override
  State<BarraNavegacao> createState() => _BarraNavegacaoState();
}

class _BarraNavegacaoState extends State<BarraNavegacao> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: CoresApp.lightRed,
      selectedItemColor: CoresApp.white,
      unselectedItemColor: CoresApp.white,
      iconSize: 30,
      selectedFontSize: 12,
      selectedIconTheme: const IconThemeData(size: 35),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      currentIndex: widget.index,
      onTap: (index) => handleTap(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          activeIcon: Icon(Icons.search),
          label: "Pesquisar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note_outlined),
          activeIcon: Icon(Icons.event_note),
          label: "Linhas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_available_outlined),
          activeIcon: Icon(Icons.event_available),
          label: "Marcadas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_busy_outlined),
          activeIcon: Icon(Icons.event_busy),
          label: "Adiadas",
        ),
      ],
    );
  }

  void handleTap(int index) {
    if (widget.index != index) {
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const Promocoes(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const PesquisaPagina(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const LinhasEHorarios(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
          break;
        case 3:
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const ViagensMarcadas(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
          break;
        case 4:
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) =>
                  const ViagensAdiadas(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
          break;
        default:
      }
    }
  }
}
