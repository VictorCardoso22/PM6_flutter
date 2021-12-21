import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: const [
          Text("PELOPES"),
          Text("24h - 72h",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xff999999),
              ),
              textAlign: TextAlign.left),
        ],
      ),
      actions: [
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text("Bem Vindo, Sd CARDOSO"),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert_rounded)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.mail_outline_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close_rounded))
      ],
      backgroundColor: const Color(0xff111111),
      // centerTitle: true,
    );
  }
}
