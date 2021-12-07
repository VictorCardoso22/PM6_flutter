// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/calendario.dart';
import 'package:menu_sidebar/escala/constants.dart';
import 'package:menu_sidebar/escala/escala_m.dart';
import 'package:menu_sidebar/escala/escala_web.dart';
import 'package:menu_sidebar/escala/form_guarnicao.dart';

class Escala extends StatefulWidget {
  const Escala({Key? key}) : super(key: key);

  @override
  _EscalaState createState() => _EscalaState();
}

class _EscalaState extends State<Escala> {
  final DateTime hoje = DateTime.now();
  // final DateTime mes = hoje.day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          var larguratela = constraint.maxWidth;

          return SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // tebela
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "titulo da GU",
                          style: kHeadingTextStyle1,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Escala 24x72",
                          style: kSubTextStyle,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              width: constraint.maxWidth,
                              height: 50,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.lightBlue[100],
                                boxShadow: [
                                  BoxShadow(
                                    color: kShadowColor,
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Text(hoje.month.toString(),
                                  style: kTitleTextStyle),
                            ),
                            Calendario(),
                          ],
                        ),
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
                            margin: EdgeInsets.only(
                              right: 20,
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF44bc9c), // background
                                onPrimary: Color(0xFF333333), // foreground
                              ),
                              onPressed: () {},
                              child: Text('ADICIONAR GRUPO',
                                  style: kTitleTextStyle),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF44bc9c), // background
                                onPrimary: Color(0xFF333333), // foreground
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (contex) {
                                    return FormGuarnicao();
                                  },
                                );
                              },
                              child: Text('ADICIONAR GUARNIÇÃO',
                                  style: kTitleTextStyle),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: larguratela <= 600 ? EscalaM() : EscalaWeb(),
                  )
                ]),
          );
        }),
      ),
    );
  }
}
