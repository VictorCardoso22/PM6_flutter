// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/gu_grupo.dart';

class EscalaWeb extends StatefulWidget {
  const EscalaWeb({Key? key}) : super(key: key);

  @override
  _EscalaWebState createState() => _EscalaWebState();
}

class _EscalaWebState extends State<EscalaWeb> {
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
    return SizedBox(
        height: height,
        child: GridView.count(
          crossAxisCount: 4,
          children: List.generate(_grupos.length, (index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  alignment: WrapAlignment.spaceAround,
                  children: [_grupos[index]]),
            );
          }),
        ));
  }
}
