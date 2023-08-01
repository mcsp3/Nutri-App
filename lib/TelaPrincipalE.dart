import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPrincipalE extends StatefulWidget {
 const TelaPrincipalE({Key? key}) : super(key: key);

 @override
 State<TelaPrincipalE> createState() => _TelaPrincipalEState();
}

class _TelaPrincipalEState extends State<TelaPrincipalE> {
 @override
 Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.greenAccent[200],
       appBar: buildAppBar(),
       body: ListView(
         children: [
           buildContainerTabelaNutricinal(),
           Padding(
             padding: const EdgeInsets.all(16),
             child: GridView.count(
               shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               crossAxisCount: 2,
               crossAxisSpacing: 16,
               mainAxisSpacing: 16,
               childAspectRatio: 0.296,

               children: [
                 buildContainerBananaApp(
                   nomePacote: 'BANANA',
                 ),
                 buildContainerMandiocaApp(
                   nomePacote: 'MANDIOCA',
                 ),
                 buildContainerARROZBRANCOApp(
                   nomePacote: 'ARROZ BRANCO',
                 ),
                 buildContainerLaranjaApp(
                   nomePacote: 'LARANJA',
                 ),
                 buildContainerCuscuzApp(
                   nomePacote: 'CUSCUZ',
                 ),
               ],
             ),
           )


         ],
       ),
     ),
   );
 }

 buildAppBar() {
   return AppBar(
     title: Text('Tabela Nutricional', style: GoogleFonts.cardo(fontSize: 26)),
     centerTitle: true,
     backgroundColor: Color(0xFF4CD27A),
   );
 }

 buildContainerTabelaNutricinal() {
   return Container(
     color: Color(0xFF4CD27A),

     child: Padding(
       padding: EdgeInsets.all(16),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             'ALIMENTE-SE BEM PARA UMA ',
             style: TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
           SizedBox(height: 4),
           Text(
             'VIDA MAIS SAUDÁVEL',
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
               "https://www.sosdocancer.com.br/wp-content/uploads/2021/02/imagens_842020940531-1024x580.jpg",
               height: 200,
               fit: BoxFit.cover,
             ),
           ),
           SizedBox(height: 8),
           Row(
             children: [
               Expanded(child: TextField()),
               SizedBox(width: 16),
               ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xFFF8FF04),
                 ),
                 onPressed: () {},
                 child: Icon(Icons.search, color: Colors.black,)
               ),
             ],
           ),

         ],
       ),
     ),
   );
 }

 buildContainerBananaApp({String nomePacote = ''}) {
   return Container(
     color: Colors.white,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             child: Image.network(
               "https://ibassets.com.br/ib.item.image.big/b-2d8f770e7eaa41b58c8629b9b295a436.jpeg",
               height: 160,
             )),
         Padding(
           padding: EdgeInsets.all(16),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 nomePacote,
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(height: 8),
               Wrap(
                 children: [
                   Icon(Icons.flatware),
                   SizedBox(width: 4),
                   Text(' 100g = 89 kcal', style: TextStyle(fontSize: 18)),
                 ],
               ),
               SizedBox(height: 8),
               Text(
                   'Vitaminas A, B e C são alguns dos nutrientes encontrados na banana.',
                   style: TextStyle(fontSize: 16)),
               SizedBox(height: 9),
               Text(
                   'A presença de três tipos diferentes de açúcares naturais, sacarose, frutose e glicose , fazem com que ela seja uma ótima fonte de energia para o organismo.',
                   style: TextStyle(fontSize: 16)),
               SizedBox(height: 9),
               Text(' ', style: TextStyle(fontSize: 20)),
               SizedBox(height: 8),
               Text(' ', style: TextStyle(color: Colors.green)),
             ],
           ),
         ),
       ],
     ),
   );
 }
}

buildContainerMandiocaApp({String nomePacote = ''}) {
 return Container(
   color: Colors.white,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(10)),
           child: Image.network(
             "https://d2qcpt1idvpipw.cloudfront.net/recipes/2020/10/mandioca-cozida-na-manteiga_20082020222829.jpg",
             height: 160,
           )),
       Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               nomePacote,
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 8),

             Wrap(
               children: [
                 Icon(Icons.flatware),
                 SizedBox(width: 4),
                 Text(' 100g ', style: TextStyle(fontSize: 18)),
      ]

      ),

             SizedBox(height: 8),




             Text('Possui 125 kcal e 30g de carboidratos.',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 8),
             Text(
                 'Contém grande valor nutricional e diversas formas de consumo. A mandioca cozida contém cálcio, magnésio, fósforo, potássio e vitamina C.',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text('', style: TextStyle(fontSize: 16)),
             SizedBox(height: 8),
             Text(' ', style: TextStyle(color: Colors.green)),
           ],
         ),
       ),
     ],
   ),
 );
}

buildContainerARROZBRANCOApp({String nomePacote = ''}) {
 return Container(
   margin: EdgeInsets.only(top: 16),
   color: Colors.white,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(10)),
           child: Image.network(
             'https://pt.petitchef.com/imgupl/recipe/arroz-branco--336801p670894.jpg',
             height: 160,
           )),
       Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               nomePacote,
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 8),
         Wrap(
           children: [
             Icon(Icons.flatware),
             SizedBox(width: 4),
             Text(' 100g de arroz branco cozido tem 130 kcal',
                 style: TextStyle(fontSize: 16)),
       ]
         ),
             SizedBox(height: 9),

             Text(
                 '28,2g de carboidratos, 2,7g de proteínas, 0,3g de gorduras e 0,4g de fibras.',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text('', style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text(' ', style: TextStyle(fontSize: 16)),
             SizedBox(height: 8),
             Text(' ', style: TextStyle(color: Colors.green)),
           ],
         ),
       ),
     ],
   ),
 );
}

buildContainerLaranjaApp({String nomePacote = ''}) {
 return Container(
   margin: EdgeInsets.only(top: 16),
   color: Colors.white,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(10)),
           child: Image.network(
             "https://hortifrutigranjeiros.com.br/wp-content/uploads/2015/06/laranja.jpg",
             height: 160,
           )),
       Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               nomePacote,
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 8),

             Wrap(
               children: [
                 Icon(Icons.flatware),
                 SizedBox(width: 4),
             Text('Uma laranja grande, que pesa cerca de 184g,contém aproximadamente 86,5 kcal',style: TextStyle(fontSize: 18)),
          ]
          ),

             SizedBox(height: 9),

             Text(
                 'Já uma pequena com 100G contém apenas 47 kcal, vitamina C',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text(' ', style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text(' ', style: TextStyle(fontSize: 16)),
             SizedBox(height: 8),
             Text(' ', style: TextStyle(color: Colors.green)),
           ],
         ),
       ),
     ],
   ),
 );
}

buildContainerCuscuzApp({String nomePacote = ''}) {
 return Container(
   margin: EdgeInsets.only(top: 16),
   color: Colors.white,
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       ClipRRect(
           borderRadius: BorderRadius.all(Radius.circular(10)),
           child: Image.network(
             "https://comidinhasdochef.com/wp-content/uploads/2019/12/Cuscuz-Nordestino.jpg",
             height: 160,
           )),
       Padding(
         padding: EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               nomePacote,
               style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
               ),
             ),
             SizedBox(height: 8),

             Wrap(
               children: [
                 Icon(Icons.flatware),
                 SizedBox(width: 4),
             Text(' 100g', style: TextStyle(fontSize: 18)),

             ],
             ),
             SizedBox(height: 9),



             Text(
                 '112 kcal, carboidrato 23g,6g de protéinas e 2g de fibras.',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text(
                 'É rico em zinco, magnésio, selênio, vitaminas A e do complexo B, como a colina (neurotransmissor importante para a memória e atividade dos músculos).',
                 style: TextStyle(fontSize: 16)),
             SizedBox(height: 9),
             Text(' ', style: TextStyle(fontSize: 16)),
             SizedBox(height: 8),
             Text(' ', style: TextStyle(color: Colors.green)),
           ],
         ),
       ),
     ],
   ),
 );
}
