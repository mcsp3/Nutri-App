import 'package:flutter/material.dart';
import 'package:aula_923/Refeicoes.dart';

class Refeicoes extends StatefulWidget {
  const Refeicoes({Key? key}) : super(key: key);


  @override
  State<Refeicoes> createState() => _RefeicoesState();
}

class _RefeicoesState extends State<Refeicoes> {
  Future<List<ItRefeicoes>> futureLista = RDao().findAll();
  
  @override
  buildAppBar() {
    return AppBar(
      title: Text('REFEIÇÕES', style: TextStyle(fontSize: 26)),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
 Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          buildContainerRefeicoes(),
          const SizedBox(height: 16),
          FutureBuilder<List<ItRefeicoes>>(
            future: futureLista,
            builder: (context, snapshot) {


              if (snapshot.hasData) {
                var lista = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: lista.length,
                  itemBuilder: (context, index) {
                    return CardPacoteRefeicoes(
                      pacoteRefeicoes: lista[index],
                    );
                  },
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ],
      ),
    );
 }
  buildContainerNutri() {
    return Container(
      color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'EXPERIMENTE COMIDAS SAUDÁVEIS QUE VOCÊ PODE CONSUMIR EM CADA UMA DAS SUAS REFEIÇÕES!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 8),

                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                    child: Image.network(
                      "https://boaforma.abril.com.br/wp-content/uploads/sites/2/2022/07/GettyImages-1287579853.jpg?quality=90&strip=info&w=1280&h=720&crop=1",
                      height: 200,
                      fit: BoxFit.cover,
                    ),

                  ),

                ],
              ),
            ),
          ),
          // Image.network(
          // 'https://upload.wikimedia.org/wikipedia/commons/f/fa/Praia_do_Cabo_Branco%2C_Jo%C3%A3o_Pessoa_%28PB%29.jpg',
          //  height: 200,

        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: buildAppBar(),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              buildContainerNutri(),
              buildContainerCafe(
                  nomePacote: 'CAFÉ DA MANHÃ',
                  i1: '1 copo (100ml) de vitamina de banana - 104 kcal',
                  i2: '1 maçã (100g) - 52 kcal',
                  i3: '10 un. de uva  - 40 kcal',
                  i4: '1 pão integral com ovo  - 16,09 kcal',
                  i5: 'Total de calorias consumidas com essa refeição: ',
                  i9: '212,09 Kcal'
              ),
              buildContainerLM(
                nomePacote: 'LANCHE DA MANHÃ',
                i1: 'Iogurte natural com fruta - 277,56 kcal',
                i2: '1 sanduíche natural. - 210 kcal',
                i3: 'Total de calorias consumidas com essa refeição: ',
                i9: '487,56 Kcal',

              ),
              buildContainerAlmoco(
                nomePacote: 'ALMOÇO',
                i1: '1 porção de 100g de feijão - 347 kcal',
                i2: '1 porção de 100g de arroz - 130 kcal',
                i3: '1 porção de 100g de macarrão - 371 kcal',
                i4: '1 porção de 100g de carne de boi  - 250 kcal',
                i5: '1 porção de salada de 73g - 12 kcal',
                i6: '1 copo de suco natural de laranja - 120 kcal',
                i7: 'Total de calorias consumidas com essa refeição: ',
                i9: '1230 Kcal',
              ),
              buildContainerLT(
                nomePacote: 'LANCHE DA TARDE',
                i1: 'Pão de queijo (100g) - 408 kcal',
                i2: '1 xícara de café - 29 kcal',
                i3: 'Total de calorias consumidas com essa refeição: ',
                i9: '437 Kcal',
              ),
              buildContainerJantar(
                nomePacote: 'JANTAR',
                i1: '1 porção de sopa de frango - 97,21 kcal',
                i2: '1 copo de suco natural - 130 kcal',
                i3: '1 porção de salada de 73g - 12 kcal',
                i4: 'Total de calorias consumidas com essa refeição:',
                i9: '239,21 Kcal',
              ),
              buildContainerLN(
                nomePacote: 'LANCHE DA NOITE',
                i1: '1 sanduíche natural. - 210 kcal',
                i2: '1 copo de leite - 42 kcal',
                i3: 'Total de calorias consumidas com essa refeição: ',
                i9: '252 Kcal',
              ),

              buildContainerPlus(
                  nomePacote: 'Gostou destas dicas?',
                  i1: 'Que máximo! Clique no botão abaixo para ficar por dentro das receitas mais saudáveis atualmente!'
              ),
            ],
          ),
        ),
      ),
    );
  }



                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow),
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
                )
              ],

            ),
          ),
        ],
      ),
    );
  }


}
