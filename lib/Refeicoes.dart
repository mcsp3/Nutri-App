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
