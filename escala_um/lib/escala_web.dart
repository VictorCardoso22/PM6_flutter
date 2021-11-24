// ignore_for_file: prefer_const_constructors

import 'package:escala_um/gu_grupo.dart';
import 'package:flutter/material.dart';

class EscalaWeb extends StatefulWidget {
  const EscalaWeb({Key? key}) : super(key: key);

  @override
  _EscalaWebState createState() => _EscalaWebState();
}

class _EscalaWebState extends State<EscalaWeb> {
  @override
  Widget build(BuildContext context) {
    // GUs
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      alignment: WrapAlignment.spaceAround,
      spacing: 0,
      runSpacing: 0,
      children: [
        GuGrupo("A", "componente_1", "componente_2", "componente_3",
            "componente_4"),
        GuGrupo("B", "componente_1", "componente_2", "componente_3",
            "componente_4"),
        GuGrupo("C", "componente_1", "componente_2", "componente_3",
            "componente_4"),
        GuGrupo("D", "componente_1", "componente_2", "componente_3",
            "componente_4"),
      ],
    );
  }
}
