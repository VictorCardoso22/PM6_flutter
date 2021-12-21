import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:menu_sidebar/escala/constants.dart';

class GuGrupo extends StatefulWidget {
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
  State<GuGrupo> createState() => _GuGrupoState();
}

class _GuGrupoState extends State<GuGrupo> {
  @override
  Widget build(BuildContext context) {
    var larguraTela = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kShadowColor,
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      // margin: EdgeInsets.all(5),
      width: larguraTela <= 653 ? 310 : 270,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              color: Color(0xFF328f95),
            ),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(widget.grupo, style: kTitleTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("CMT: ${widget.componente_1} "),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("MOT:  ${widget.componente_2} "),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("PAT 1: ${widget.componente_3} "),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("PAT 2 :  ${widget.componente_4}"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(
                  bottom: 08,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFe6e7e8), // background
                    onPrimary: const Color(0xFF333333), // foreground
                  ),
                  onPressed: () {},
                  child: const Text('VER', style: kTitleTextStyle),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF44bc9c), // background
                    onPrimary: const Color(0xFF333333), // foreground
                  ),
                  onPressed: () {},
                  child: const Text('EDITAR', style: kTitleTextStyle),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
