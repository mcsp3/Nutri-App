import 'package:aula_913/domain/pacote_turistico.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaDetalhes extends StatefulWidget {
  final PacoteTuristico pacoteTuristico;

  const TelaDetalhes({
    Key? key,
    required this.pacoteTuristico,
  }) : super(key: key);

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  PacoteTuristico get pacote => widget.pacoteTuristico;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(pacote.imagem),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  buildText(
                    pacote.cidade,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 8),
                  buildText(
                    pacote.titulo,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                  const SizedBox(height: 8),
                  buildText(pacote.desc),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buildText(
    String text, {
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
