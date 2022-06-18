import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/domain/pesquisa.dart';
import '../utils/app_colors.dart';
import '../widgets/barra_navegacao.dart';
import '../widgets/pesquisa_card.dart';

class PesquisaPagina extends StatefulWidget {
  const PesquisaPagina({Key? key}) : super(key: key);

  @override
  _PesquisaPaginaState createState() => _PesquisaPaginaState();
}

class _PesquisaPaginaState extends State<PesquisaPagina> {
  Pesquisa pesquisa1 = Pesquisa(
    imagem:
        "https://agenciabrasilia.df.gov.br/wp-conteudo/uploads/2019/10/entorno.jpg",
    pergunta: 'Qual o seu destino?',
    resposta: 'Pesquise aqui...',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 0, right: 16, left: 16, top: 16),
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
        index: 1,
      ),
    );
  }
}
