// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:escala_um/constants.dart';
import 'package:escala_um/escala_m.dart';
import 'package:escala_um/escala_web.dart';
import 'package:flutter/material.dart';

class Escala extends StatefulWidget {
  const Escala({Key? key}) : super(key: key);

  @override
  _EscalaState createState() => _EscalaState();
}

class _EscalaState extends State<Escala> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
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
          var larguratela = constraint.maxWidth;
          if (larguratela < 600) {
            return EscalaM();
          } else {
            return EscalaWeb();
          }
        }),
      ),
    );
  }
}
