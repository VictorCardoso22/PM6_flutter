// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/gu_grupo.dart';

class EscalaM extends StatefulWidget {
  const EscalaM({Key? key}) : super(key: key);

  @override
  _EscalaMState createState() => _EscalaMState();
}

class _EscalaMState extends State<EscalaM> {
  final List<Widget> _grupos = [
    GuGrupo(
        "A", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "B", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "C", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "D", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "D1", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "A", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "B", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "C", "componente_1", "componente_2", "componente_3", "componente_4"),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // GUs
    return Container(
        height: height * 0.7,
        padding: EdgeInsets.only(bottom: 10, top: 40),
        child: GridView.count(
          // scrollDirection: false,
          crossAxisCount: 1,
          children: List.generate(_grupos.length, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _grupos[index],
              ],
            );
          }),
        ));
  }
}
