import 'package:flutter/material.dart';
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
      selectedIconTheme: const IconThemeData(size: 35),
      showSelectedLabels: false,
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

  void handleTap(int index) {
    if (widget.index != index) {
      switch (index) {
        case 0:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(
                  'Página 0',
                  style: TextStyle(color: CoresApp.black),
                ),
              ),
            );
          }));
          break;
        case 1:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(
                  'Página 1',
                  style: TextStyle(color: CoresApp.black),
                ),
              ),
            );
          }));
          break;
        case 2:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const ViagensMarcadas();
          }));
          break;
        case 3:
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return Scaffold(
              body: Center(
                child: Text(
                  'Página 3',
                  style: TextStyle(color: CoresApp.black),
                ),
              ),
            );
          }));
          break;
        default:
      }
    }
  }
}
