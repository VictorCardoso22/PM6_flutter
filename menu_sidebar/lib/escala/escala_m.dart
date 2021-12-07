// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/gu_grupo.dart';

class EscalaM extends StatefulWidget {
  const EscalaM({Key? key}) : super(key: key);

  @override
  _EscalaMState createState() => _EscalaMState();
}

class _EscalaMState extends State<EscalaM> {
  @override
  Widget build(BuildContext context) {
    // GUs
    return Column(
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
