import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/pages/linhas_e_horarios.dart';
import 'package:terminal_rodoviario/pages/pesquisa_pagina.dart';
import 'package:terminal_rodoviario/pages/promocoes.dart';
import 'package:terminal_rodoviario/pages/viagens_adiadas.dart';
import 'package:terminal_rodoviario/pages/viagens_marcadas.dart';

import '../domain/page_data.dart';
import '../utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<PageData> pages = [
    PageData(
      widget: const Promocoes(),
      title: "Terminal Rodoviário Arapiraca",
      appbarColor: CoresApp.lightRed,
      titleColor: CoresApp.white,
      titleFontSize: 22,
    ),
    PageData(widget: const PesquisaPagina(), title: "Rodoviária de Arapiraca"),
    PageData(widget: const LinhasEHorarios(), title: "Linhas e horários"),
    PageData(widget: const ViagensMarcadas(), title: "Viagens Marcadas"),
    PageData(widget: const ViagensAdiadas(), title: "Viagens Adiadas"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          backgroundColor: pages[selectedIndex].appbarColor,
          systemOverlayStyle: null,
          elevation: 0,
          title: Text(
            pages[selectedIndex].title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: pages[selectedIndex].titleColor,
                fontSize: pages[selectedIndex].titleFontSize),
          ),
        ),
      ),
      body: pages[selectedIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CoresApp.lightRed,
        selectedItemColor: CoresApp.white,
        unselectedItemColor: CoresApp.white,
        iconSize: 30,
        selectedFontSize: 12,
        selectedIconTheme: const IconThemeData(size: 35),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
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
      ),
    );
  }
}
