import 'package:flutter/material.dart';
import 'package:menu_sidebar/escala/calendario.dart';
import 'package:menu_sidebar/escala/constants.dart';
import 'package:menu_sidebar/escala/escala_m.dart';
import 'package:menu_sidebar/escala/escala_t.dart';
import 'package:menu_sidebar/escala/escala_web.dart';
import 'package:menu_sidebar/escala/form_guarnicao.dart';

class Escala extends StatefulWidget {
  const Escala({Key? key}) : super(key: key);

  @override
  _EscalaState createState() => _EscalaState();
}

class _EscalaState extends State<Escala> {
  var _visibilidade = false;
  late Widget _icone = const Icon(Icons.arrow_circle_down);
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Widget _telaEscala;
    if (width <= 600) {
      _telaEscala = const EscalaM();
    } else if (width >= 601 && width <= 959) {
      _telaEscala = const EscalaT();
    } else {
      _telaEscala = const EscalaWeb();
    }
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // tebela
              Column(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          // height: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            color: Colors.lightBlue[100],
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 92,
                                child: Container(
                                  child: const Text(
                                    "Dezembro",
                                    style: kTitleTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: IconButton(
                                  iconSize: 25,
                                  onPressed: () {
                                    if (_visibilidade == true) {
                                      setState(() {
                                        _visibilidade = false;
                                        _icone =
                                            const Icon(Icons.arrow_circle_down);
                                      });
                                    } else {
                                      setState(() {
                                        _visibilidade = true;
                                        _icone =
                                            const Icon(Icons.arrow_circle_up);
                                      });
                                    }
                                  },
                                  alignment: Alignment.centerLeft,
                                  icon: _icone,
                                ),
                              )
                            ],
                          ),
                        ),
                        Visibility(
                            visible: _visibilidade,
                            child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: const Calendario())),
                      ],
                    ),
                  ),
                ],
              ),
              // botões de ação
              Container(
                padding: const EdgeInsets.only(
                    bottom: 26, top: 26, left: 16, right: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF44bc9c), // background
                            onPrimary: const Color(0xFF333333), // foreground
                          ),
                          onPressed: () {},
                          child: const Text('ADICIONAR GRUPO',
                              style: kTitleTextStyle),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF44bc9c), // background
                            onPrimary: const Color(0xFF333333), // foreground
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (contex) {
                                return const FormGuarnicao();
                              },
                            );
                          },
                          child: const Text('ADICIONAR GUARNIÇÃO',
                              style: kTitleTextStyle),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _telaEscala
            ]),
      ),
    );
  }
}
