// ignore_for_file: prefer_const_constructors

import 'package:escala_um/calendario.dart';
import 'package:escala_um/constants.dart';
import 'package:escala_um/gu_grupo.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EscalaWeb extends StatefulWidget {
  const EscalaWeb({Key? key}) : super(key: key);

  @override
  _EscalaWebState createState() => _EscalaWebState();
}

class _EscalaWebState extends State<EscalaWeb> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // tebela
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Escala 24x72",
                  style: kHeadingTextStyle1,
                ),
              ),
              Container(
                // color: Colors.red,
                // height: 60,
                padding: EdgeInsets.all(16),
                child: Calendario(),
              ),
            ],
          ),
          // botões de ação
          Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF44bc9c), // background
                        onPrimary: Color(0xFF333333), // foreground
                      ),
                      onPressed: () {},
                      child: Text('ADICIONAR TURNO', style: kTitleTextStyle),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF44bc9c), // background
                        onPrimary: Color(0xFF333333), // foreground
                      ),
                      onPressed: () {},
                      child: Text('ADICIONAR TURNO', style: kTitleTextStyle),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF44bc9c), // background
                        onPrimary: Color(0xFF333333), // foreground
                      ),
                      onPressed: () {},
                      child:
                          Text('ADICIONAR GUARNIÇÃO', style: kTitleTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "titulo da GU",
                  style: kTitleTextStyle,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kTextLightColor, // background
                      onPrimary: Color(0xFF333333), // foreground
                    ),
                    onPressed: () {},
                    child: Icon(Icons.app_registration),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kDeathColor, // background
                      onPrimary: Color(0xFF333333), // foreground
                    ),
                    onPressed: () {},
                    child: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.only(left: 20, top: 20),
          ),

          // GUs
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.center,
            spacing: 0,
            runSpacing: 0,
            children: [
              GuGrupo("A", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("B", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("C", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("A", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("A", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("B", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("C", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
              GuGrupo("A", "componente_1", "componente_2", "componente_3",
                  "componente_4"),
            ],
          ),
        ],
      ),
    );
  }
}
