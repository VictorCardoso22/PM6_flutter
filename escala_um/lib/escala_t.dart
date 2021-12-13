// ignore_for_file: prefer_const_constructors

import 'package:escala_um/gu_grupo.dart';
import 'package:flutter/material.dart';

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
        // margin: EdgeInsets.only(bottom: 20, top: 30),
        // padding: EdgeInsets.only(bottom: 20, top: 20),
        // color: Colors.green,
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
