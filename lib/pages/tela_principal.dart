import 'package:aula_913/domain/pacote_turistico.dart';
import 'package:aula_913/pages/tela_destaques.dart';
import 'package:aula_913/widgets/card_pacote_turistico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int selectedIndex = 0;
  var telas = const [
    TelaDestaques(),
    Center(child: Text('Tela 1', style: TextStyle(fontSize: 24))),
    Center(child: Text('Tela 2', style: TextStyle(fontSize: 24))),
    Center(child: Text('Tela 3', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: buildAppBar(),
        body: telas[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xFFE81F7C),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass),
              label: 'Destaques',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bag),
              label: 'Pacotes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'Mais',
            ),
          ],
        ),
      ),
    );
  }

  buildAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: const Color(0xFF10397B),
      title: const Text('Pesquisar', style: TextStyle(fontSize: 26)),
    );
  }

}
