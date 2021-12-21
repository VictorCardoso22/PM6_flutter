// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:menu_sidebar/escala/constants.dart';

class FormGuarnicao extends StatefulWidget {
  const FormGuarnicao({Key? key}) : super(key: key);

  @override
  _FormGuarnicaoState createState() => _FormGuarnicaoState();
}

class _FormGuarnicaoState extends State<FormGuarnicao> {
  @override
  Widget build(BuildContext context) {
    var larguraTela = MediaQuery.of(context).size.width;

    return AlertDialog(
      title: Text(
        "CADASTRO DE GUARNIÇÃO: ",
        style: kTitleTextStyle,
      ),
      content: Container(
        width: larguraTela <= 600 ? 300 : (larguraTela - 350),
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    labelText: 'GRUPO',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'CMT',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'MOT',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'PAT 1',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'PAT 2',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'OBS:',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFe6e7e8), // background
                            onPrimary: Color(0xFF333333), // foreground
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: Text('CANCELAR', style: kTitleTextStyle),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF44bc9c), // background
                            onPrimary: Color(0xFF333333), // foreground
                          ),
                          onPressed: () {},
                          child: Text('SALVAR', style: kTitleTextStyle),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
