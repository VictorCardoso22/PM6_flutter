import 'package:flutter/material.dart';

class MobileAppBar extends StatefulWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  _MobileAppBarState createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("RP 01"),
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
          padding: EdgeInsets.only(top: 21.0, right: 5, left: 5),
          child: Text("Bem-vindo, Sd CARDOSO"),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 4, left: 4),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.apps_rounded))),
      ],
      backgroundColor: const Color(0xff111111),
      // centerTitle: true,
    );
  }
}
