import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/domain/pesquisa.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          MainMenuCard(
            pesquisa: pesquisa1,
          ),
        ],
      ),
    );
  }
}
