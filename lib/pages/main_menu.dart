import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/domain/pesquisa.dart';
import 'package:terminal_rodoviario/widgets/viagem_marcada_card.dart';
import '../utils/app_colors.dart';
import '../widgets/barra_navegacao.dart';
import '../widgets/main_menu-card.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Pesquisa pesquisa1 = Pesquisa(
    imagem: 'https://www.rodoviarianatal.com.br/wp-content/uploads/2019/05/foto4.jpg',
    pergunta: 'Qual o seu destino?', 
    resposta: 'Pesquise aqui...',
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0, right: 16, left: 16, top: 16),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: null,
            elevation: 0,
            title: Text(
              'Rodoviária de Arapiraca',
              style: TextStyle(color: CoresApp.black),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            MainMenuCard(
              pesquisa: pesquisa1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BarraNavegacao(
        index: 2,
      ),  
    );
  }

}
