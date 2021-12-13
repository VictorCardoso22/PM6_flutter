// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:escala_um/calendario.dart';
import 'package:escala_um/constants.dart';
import 'package:escala_um/escala_m.dart';
import 'package:escala_um/escala_t.dart';
import 'package:escala_um/escala_web.dart';
import 'package:escala_um/form_guarnicao.dart';
import 'package:flutter/material.dart';

class Escala extends StatefulWidget {
  const Escala({Key? key}) : super(key: key);

  @override
  _EscalaState createState() => _EscalaState();
}

class _EscalaState extends State<Escala> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Widget _telaEscala;
    if (width <= 600) {
      _telaEscala = EscalaM();
    } else if (width >= 601 && width <= 959) {
      _telaEscala = EscalaT();
    } else {
      _telaEscala = EscalaWeb();
    }
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Escala de Serviço"),
          ],
        ),
        backgroundColor: Color(0xFF328f95),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
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
                    margin: EdgeInsets.only(top: 30),
                    color: Colors.blueAccent,
                    child: _telaEscala,
                  )
                ]),
          );
        }),
      ),
    );
  }
}
