// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/gu_grupo.dart';

class EscalaT extends StatefulWidget {
  const EscalaT({Key? key}) : super(key: key);

  @override
  _EscalaTState createState() => _EscalaTState();
}

class _EscalaTState extends State<EscalaT> {
  final List<Widget> _grupos = [
    GuGrupo(
        "A", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "B", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "C", "componente_1", "componente_2", "componente_3", "componente_4"),
    GuGrupo(
        "D", "componente_1", "componente_2", "componente_3", "componente_4"),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // GUs
    return Container(
        height: height * 0.7,
        padding: EdgeInsets.only(top: 20),
        child: GridView.count(
          // scrollDirection: Axis.horizontal,
          crossAxisCount: 2,
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
