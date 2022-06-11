import 'package:flutter/material.dart';

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
      selectedIconTheme: const IconThemeData(size: 35),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: widget.index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note_outlined),
          activeIcon: Icon(Icons.event_note),
          label: "Linhas e horários",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_available_outlined),
          activeIcon: Icon(Icons.event_available),
          label: "Viagens marcadas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_busy_outlined),
          activeIcon: Icon(Icons.event_busy),
          label: "Viagens adiadas",
        ),
      ],
    );
  }
}
