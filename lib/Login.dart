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
           //  buildContainerFaceApp(
             //  nomePacote: 'PARA VOÇÊ USUÁRIO',
            // ),
             //buildContainerFaceApp(
              // nomePacote: 'NOSSAS DICAS',

             //buildContainerFaceApp(
               //nomePacote: 'NOVIDADES',

           ],
         ),
       ),
     ),
   );
 }

 buildAppBar() {
   return AppBar(
     title: Text('LOGIN', style: GoogleFonts.cardo(fontSize: 26)),
     centerTitle: true,
     backgroundColor: Color(0xFF70B999),
   );
 }

 buildContainerNutri() {
   return Container(
     color: Color(0xFF70B999),
     child: Row(
       children: [
         Expanded(
           child: Padding(
             padding: EdgeInsets.all(16),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ClipRRect(
                   borderRadius: BorderRadius.all(Radius.circular(16)),
                   child: Image.network(
                     'https://www.creativefabrica.com/wp-content/uploads/2020/09/23/WELCOME-Graphics-5632158-1-1-580x386.jpg',
                 height: 200,
                     fit: BoxFit.cover,
                   ),
                 ),
                 SizedBox(height: 8,),
                 Text(
                   'FAÇA PARTE DO NUTRI-APP',
                   style: TextStyle(
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                   ),
                 ),
                 SizedBox(height: 4),
                 Text(
                   '',
                   style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),
                 ),
                 SizedBox(height: 8),



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
                         child: Icon(Icons.person, color: Colors.black,)
                     ),
                   ],
                 ),

                /* ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xFFF8FF04),
                   ),
                   onPressed: () {},
                   child:

                   Text(
                     'EMAIL!',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
                   ),
                 ),*/
              SizedBox(height: 4,),

                 Row(
                   children: [
                     Expanded(child: TextField()),
                     SizedBox(width: 16),
                     ElevatedButton(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xFFF8FF04),
                         ),
                         onPressed: () {},
                         child: Icon(Icons.vpn_key, color: Colors.black,)
                     ),
                   ],
                 ),

             SizedBox(height: 10,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xFFF8FF04),
                   ),
                   onPressed: () {},
                   child: Text(
                     'ENTRAR',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
                   ),
                 ),
              SizedBox(height: 50,),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Color(0xFFF8FF04),
                   ),
                   onPressed: () {},
                   child: Text(
                     'NOVO USUÁRIO',
                     style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
                   ),
                 ),
                 SizedBox(height: 60,),

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

/* buildContainerFaceApp({String nomePacote = ''}) {
  return Container(
     margin: EdgeInsets.only(top: 16),
     color: Colors.white,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(90)),
             child: Image.network(
               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0El2foYXwt3yOC8J5Akff9H5JD0pw4tCeTj5zi4_AL_O4lHvIOPH6Cv2MT_u-BmXeGgI&usqp=CAU",

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
               Text('Aéreo + Hotel All Inclusive',
                   style: TextStyle(fontSize: 16)),
               SizedBox(height: 8),
               Text('5 Diárias 1 Pessoa', style: TextStyle(fontSize: 16)),
               SizedBox(height: 8),
               Text('A partir de R\$ 6818'),
               Text(
                 'R\$ 3749',
                 style: TextStyle(
                     fontSize: 32,
                     fontWeight: FontWeight.bold,
                     color: Colors.orange),
               ),
               SizedBox(height: 8),
               Text('Cancelamento Grátis!',
                   style: TextStyle(color: Colors.green)),
             ],
           ),
         ),
       ],
     ),
   );
 } */
}
