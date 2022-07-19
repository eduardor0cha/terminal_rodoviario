import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';
import 'package:terminal_rodoviario/widgets/promocoes_card.dart';

import '../domain/opcao.dart';

class Promocoes extends StatefulWidget {
  static const name = "Promoções";

  const Promocoes({Key? key}) : super(key: key);

  @override
  State<Promocoes> createState() => _PromocoesState();
}

class _PromocoesState extends State<Promocoes> {
  Opcao opcao1 = Opcao(
    imagem:
        "https://www.penaestrada.blog.br/wp-content/uploads/2020/08/onde-ficar-em-aracaju-34.jpg",
    destino: "Aracajú - SE",
    data: "21/06/2022",
    horario: "08:00",
    valor: 70,
    viacao: "Viação Catedral",
    desconto: "0",
  );
  Opcao opcao2 = Opcao(
    imagem:
        'https://i0.wp.com/www.maceioalagoas.com/wp-content/uploads/2016/08/050_Pontal-do-Cururipe.jpg?fit=1600%2C1078&ssl=1',
    destino: 'Coruripe',
    data: "12/07/2022",
    horario: "10:00",
    valor: 40,
    viacao: "Viação Catedral",
    desconto: "0",
  );
  Opcao opcao3 = Opcao(
    imagem:
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/6a/0b/43/agende-ja-seu-passeio.jpg?w=500&h=300&s=1',
    destino: 'Atalaia',
    data: "13/06/2022",
    horario: "12:00",
    valor: 75,
    viacao: "Viação Catedral",
    desconto: "15",
  );
  Opcao opcao4 = Opcao(
    imagem:
        'https://servicodados.ibge.gov.br/api/v1/resize/image?maxwidth=600&maxheight=600&caminho=biblioteca.ibge.gov.br/visualizacao/fotografias/GEBIS%20-%20RJ/AL26912.jpg',
    destino: 'Coite',
    data: "12/07/2022",
    horario: "13:00",
    valor: 40,
    viacao: "Viação Catedral",
    desconto: "17",
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Text(
            'RECOMENDADOS',
            style: TextStyle(color: CoresApp.black, fontSize: 18),
          ),
          PromocoesCard(
            opcao: opcao1,
          ),
          PromocoesCard(
            opcao: opcao2,
          ),
          Text(
            'OFERTAS',
            style: TextStyle(color: CoresApp.black, fontSize: 18),
          ),
          PromocoesCard(
            opcao: opcao3,
          ),
          PromocoesCard(
            opcao: opcao4,
          ),
        ],
      ),
    );
  }
}
