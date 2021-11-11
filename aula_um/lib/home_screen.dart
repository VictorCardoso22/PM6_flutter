// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:aula_um/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text("Próximo Serviço:", style: kHeadingTextStyle1),
                padding: EdgeInsets.all(16),
              ),
              Container(
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
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(
                  left: 13,
                  right: 13,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            top: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Local",
                                  style: kTitleTextStyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text("1ª CIA/Ind",
                                    textAlign: TextAlign.left,
                                    style: kHeadingTextStyle2),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "São Miguel dos Campos",
                                  textAlign: TextAlign.right,
                                  style: kSubTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            top: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Área",
                                  style: kTitleTextStyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "RP",
                                  textAlign: TextAlign.left,
                                  style: kHeadingTextStyle2,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Patrulheiro",
                                  textAlign: TextAlign.right,
                                  style: kSubTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 0.5,
                      color: kTextLightColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                            top: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "Apresentão",
                                  style: kTitleTextStyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "20NOV21 às 07h",
                                  textAlign: TextAlign.left,
                                  style: kHeadingTextStyle2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Minha escala de serviço",
                      style: kHeadingTextStyle2,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                      onPressed: () {},
                      child: Text('Detalhes >'),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(16),
              ),
              Container(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
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
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              left: 13,
                              right: 13,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 13,
                                    right: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: kPrimaryColor, // background
                                          onPrimary:
                                              kBackgroundColor, // foreground
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          '22/11/2021',
                                          // style: kTitleTextStyle,
                                        ),
                                      ),
                                      Text(
                                        '08h-----20h',
                                        style: TextStyle(color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child: VerticalDivider(
                                    color: kTextLightColor,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 13,
                                    right: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1ª CIA/Ind",
                                        style: kTitleTextStyle,
                                      ),
                                      Text(
                                        "Ordinário",
                                        style: kSubTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.yellow[100],
                              boxShadow: [
                                BoxShadow(
                                  color: kShadowColor,
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              left: 13,
                              right: 13,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 13,
                                    right: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: kPrimaryColor, // background
                                          onPrimary:
                                              kBackgroundColor, // foreground
                                        ),
                                        onPressed: () {},
                                        child: Text('24/11/2021'),
                                      ),
                                      Text('08h-----20h',
                                          style:
                                              TextStyle(color: kPrimaryColor)),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child: VerticalDivider(
                                    color: kTextLightColor,
                                    thickness: 1,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 13,
                                    right: 13,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "1ª CIA/Ind",
                                        style: kTitleTextStyle,
                                      ),
                                      Text(
                                        "Ordinário",
                                        style: kSubTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
