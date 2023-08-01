import 'package:aula_913/domain/pacote_turistico.dart';
import 'package:aula_913/widgets/card_pacote_turistico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaDestaques extends StatefulWidget {
  const TelaDestaques({Key? key}) : super(key: key);

  @override
  State<TelaDestaques> createState() => _TelaDestaquesState();
}

class _TelaDestaquesState extends State<TelaDestaques> {
  var listPacotes = const [
    PacoteTuristico(
      cidade: 'CANCÚN, MEX',
      validade: 'De 01 Ago 2023 a 31 Dez 2024',
      imagem:
          'https://www.remessaonline.com.br/blog/wp-content/uploads/2022/06/praias-de-cancun-1170x780.jpg.optimal.jpg',
      desconto: 46,
      titulo: 'Pacote Cancún 2024',
      desc: 'Aéreo + Hotel All inclusive',
      numDiarias: 2,
      numPessoas: 3,
      precoAnterior: 6819,
      precoatual: 3749,
    ),
    PacoteTuristico(
      cidade: 'MARAGOGI, MEX',
      validade: 'De 01 Ago 2023 a 31 Dez 2024',
      imagem:
          'https://upload.wikimedia.org/wikipedia/commons/b/b8/Gal%C3%A9s_de_maragogi.jpg',
      desconto: 45,
      titulo: 'Pacote Maragogi 2023 - 2024',
      desc: 'Hotel All inclusive',
      numDiarias: 10,
      numPessoas: 2,
      precoAnterior: 4500,
      precoatual: 1489,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          buildContainerPropaganda(),
          const SizedBox(height: 16),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listPacotes.length,
            itemBuilder: (context, index) {
              return CardPacoteTuristico(
                pacoteTuristico: listPacotes[index],
              );
            },
          ),
        ],
      ),
    );
  }

  buildContainerPropaganda() {
    return Container(
      color: const Color(0xFFAD00D5),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Tops destinos mais buscados',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Corre que ta rolando muita promoção',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF8FF04)),
                    onPressed: () {},
                    child: Text(
                      'EU QUERO!',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.network(
            'https://i.pinimg.com/236x/97/4f/e7/974fe73a898e32cc9bfe84df95c4b428.jpg',
            height: 180,
          ),
        ],
      ),
    );
  }
}
