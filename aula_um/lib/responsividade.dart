// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:aula_um/constants.dart';
import 'package:aula_um/home_screen_m.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Responsividade extends StatefulWidget {
  const Responsividade({Key? key}) : super(key: key);

  @override
  _ResponsividadeState createState() => _ResponsividadeState();
}

class _ResponsividadeState extends State<Responsividade> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Escala de Serviço"),
          ],
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraint) {
          var larguratela = constraint.maxWidth;
          if (larguratela < 600) {
            return HomeSreenM();
          } else if (larguratela < 960) {
            return Text("Celular e tabletes");
          } else {
            return Text("Computadores");
          }
        }),
      ),
    );
  }
}
