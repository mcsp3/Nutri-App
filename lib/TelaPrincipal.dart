import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPrincipal extends StatefulWidget {
 const TelaPrincipal({Key? key}) : super(key: key);

 @override
 State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
 @override
 Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.grey[100],
       appBar: buildAppBar(),
       body: Padding(
         padding: EdgeInsets.all(16),
         child: ListView(
           children: [
             buildContainerNutri(),
             buildContainerFaceApp(
               nomePacote: 'PARA VOÇÊ USUÁRIO',
             ),
             buildContainerFace1App(
               nomePacote: 'NOSSAS DICAS',
             ),
             buildContainerFace2App(
               nomePacote: 'NOVIDADES',
             ),
           ],
         ),
       ),
     ),
   );
 }

 buildAppBar() {
   return AppBar(
     title: Text('NUTRI - APP', style: GoogleFonts.cardo(fontSize: 26)),
     centerTitle: true,
     backgroundColor: Color(0xFF10397B),
   );
 }

 buildContainerNutri() {
   return Container(
     color: Color(0xFF10397B),
     child: Row(
       children: [
         Expanded(
           child: Padding(
             padding: EdgeInsets.all(16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text(
                   'A BASE DA NUTRIÇAO DO SEU DIA À DIA',
                   style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 SizedBox(height: 4),
                 Text(
                   'VOCÊ SÓ ENCONTRA AQUI',
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
                     "https://i0.wp.com/profissaobiotec.com.br/wp-content/uploads/2018/04/Picture1-21.png?fit=872%2C342&ssl=1",
                     height: 200,
                     fit: BoxFit.cover,
                   ),
                 ),

                 SizedBox(height: 8),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xFFF8FF04),
                   ),
                   onPressed: () {},
                   child: Text(
                     'ADQUIRIR!',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
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

 buildContainerFaceApp({String nomePacote = ''}) {
   return Container(
     margin: EdgeInsets.only(top: 16),
     color: Colors.white,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(90)),
             child: Image.network(
               'https://img.freepik.com/vetores-premium/homem-espantado-gesticulando-com-a-mao-levantada-e-apontando-para-baixo-desenhado-a-mao_256423-68.jpg?w=2000',

            height: 300,
               fit: BoxFit.cover,
             )


         ),

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
              /* Text('',
                   style: TextStyle(fontSize: 16)),
               SizedBox(height: 8),
               Text('', style: TextStyle(fontSize: 16)),
               SizedBox(height: 8),
               Text(''),

               */
               Text(
                 'TABELA E DICAS',
                 style: TextStyle(
                     fontSize: 32,
                     fontWeight: FontWeight.bold,
                     color: Colors.black),
               ),
               SizedBox(height: 8),
               Text('PARA SE MANTER SAUDÁVEL',
                   style: TextStyle(color: Colors.green)),
             ],
           ),

         ),
       ],
     ),
   );



 }

 buildContainerFace1App({String nomePacote = ''}) {
   return Container(
       margin: EdgeInsets.only(top: 16),
       color: Colors.white,
       child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
       ClipRRect(
       borderRadius: BorderRadius.all(Radius.circular(16)),
   child: Image.network(
     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-9uIgMLxID4IC9d5HDdYlI17VqQQnXXJpQA&usqp=CAU',
height: 300,
   fit: BoxFit.cover,
   )


   ),

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
   /*Text('',
   style: TextStyle(fontSize: 16)),
   SizedBox(height: 8),
   Text('', style: TextStyle(fontSize: 16)),
   SizedBox(height: 8),
   Text(''),

    */
   Text(
   'DICAS MENSAIS',
   style: TextStyle(
   fontSize: 32,
   fontWeight: FontWeight.bold,
   color: Colors.black),
   ),
   SizedBox(height: 8),
   Text('ESCLARECENDO MITOS DA SUA ALIMENTAÇÃO',
   style: TextStyle(color: Colors.green)),
   ],
   ),
   ),
   ],
   ),
   );
 }
 buildContainerFace2App({String nomePacote = ''}) {
   return Container(
       margin: EdgeInsets.only(top: 16),
       color: Colors.white,
       child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
       ClipRRect(
       borderRadius: BorderRadius.all(Radius.circular(16)),
   child: Image.network(
     'https://img.elo7.com.br/product/zoom/1F6ACCE/caderno-de-receitas-receitas.jpg',

   height: 300,
   fit: BoxFit.cover,
   )


   ),

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
  /* Text('',
   style: TextStyle(fontSize: 16)),
   SizedBox(height: 8),
   Text('', style: TextStyle(fontSize: 16)),
   SizedBox(height: 8),
   Text(''),

   */
   Text(
   'NOVAS RECEITAS',
   style: TextStyle(
   fontSize: 32,
   fontWeight: FontWeight.bold,
   color: Colors.black),
   ),
   SizedBox(height: 8),
   Text('EM BREVE!',
   style: TextStyle(color: Colors.green)),
   ],
   ),
   ),
   ],
   ),
   );
}
}
