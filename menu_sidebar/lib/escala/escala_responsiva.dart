// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/gu_grupo.dart';

class EscalaResponsiva extends StatefulWidget {
  const EscalaResponsiva({Key? key}) : super(key: key);

  @override
  _EscalaResponsivaState createState() => _EscalaResponsivaState();
}

class _EscalaResponsivaState extends State<EscalaResponsiva> {
  final List<Widget> _grupos = [
    GuGrupo("A", "SGT Marcos", "CB João", "SD Marcio", "SD Maria"),
    GuGrupo("B", "CB Dias", "SD José", "SD Marcela", "SD Silva"),
    GuGrupo("C", "SGT Marcos", "CB João", "SD Marcio", "SD Maria"),
    GuGrupo("D", "CB Dias", "SD José", "SD Marcela", "SD Silva"),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    int _count;
    if (width <= 653) {
      _count = 1;
    } else if (width > 653 && width < 959) {
      _count = 2;
    } else if (width >= 959 && width <= 1200) {
      _count = 3;
    } else {
      _count = 4;
    }
    // GUs
    return SizedBox(
        height: height,
        child: GridView.count(
          crossAxisCount: _count,
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
