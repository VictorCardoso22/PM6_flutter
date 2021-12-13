// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:menu_sidebar/escala/constants.dart';

class GuGrupo extends StatelessWidget {
  String grupo;
  String componente_1;
  String componente_2;
  String componente_3;
  String componente_4;

  GuGrupo(this.grupo, this.componente_1, this.componente_2, this.componente_3,
      this.componente_4,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var larguraTela = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: kShadowColor,
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: EdgeInsets.all(10),
        width: larguraTela <= 600 ? 300 : 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: Color(0xFF328f95),
              ),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(grupo, style: kTitleTextStyle),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("CMT: ${this.componente_1} "),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("MOT:  ${this.componente_2} "),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("PAT 1: ${this.componente_3} "),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("PAT 2 :  ${this.componente_4}"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6e7e8), // background
                      onPrimary: Color(0xFF333333), // foreground
                    ),
                    onPressed: () {},
                    child: Text('VER', style: kTitleTextStyle),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF44bc9c), // background
                      onPrimary: Color(0xFF333333), // foreground
                    ),
                    onPressed: () {},
                    child: Text('EDITAR', style: kTitleTextStyle),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
