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
          // scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          children: List.generate(_grupos.length, (index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // alignment: WrapAlignment.spaceAround,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // spacing: 0,
                  // runSpacing: 0,
                  children: [_grupos[index]]),
            );
          }),
        ));
  }
}
// return Wrap(
//       crossAxisAlignment: WrapCrossAlignment.start,
//       alignment: WrapAlignment.spaceAround,
//       spacing: 0,
//       runSpacing: 0,
//       children: [
//         GuGrupo("A", "componente_1", "componente_2", "componente_3",
//             "componente_4"),
//         GuGrupo("B", "componente_1", "componente_2", "componente_3",
//             "componente_4"),
//         GuGrupo("C", "componente_1", "componente_2", "componente_3",
//             "componente_4"),
//         GuGrupo("D", "componente_1", "componente_2", "componente_3",
//             "componente_4"),
//       ],
//     );

// GridView.count(
//       // Create a grid with 2 columns. If you change the scrollDirection to
//       // horizontal, this produces 2 rows.
//       crossAxisCount: 2,
//       // Generate 100 widgets that display their index in the List.
//       children: List.generate(100, (index) {
//         return Center(
//           child: Text(
//             'Item $index',
//             style: Theme.of(context).textTheme.headline5,
//           ),
//         );
//       }),
//     )