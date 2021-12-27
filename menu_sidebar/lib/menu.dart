import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:menu_sidebar/appbar/mobile_appbar.dart';
import 'package:menu_sidebar/appbar/web_appbar.dart';
import 'package:menu_sidebar/escala/escala.dart';

import 'package:menu_sidebar/home.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: const MobileAppBar(),
                preferredSize: Size(largura, alturaBarra),
              )
            : PreferredSize(
                child: const WebAppBar(),
                preferredSize: Size(largura, alturaBarra),
              ),
        body: const SafeArea(child: SidebarPage()),
      );
    });
  }
}

class SidebarPage extends StatefulWidget {
  const SidebarPage({Key? key}) : super(key: key);

  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  late List<CollapsibleItem> _items;
  late Widget _headline;
  final AssetImage _avatarImg = AssetImage(
    'assets/PMAL.jpg',
  );

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = const Escala();
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () {
          setState(() {
            _headline = const Escala();
          });
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Teste',
        icon: Icons.texture_sharp,
        onPressed: () {
          setState(() {
            _headline = const Home();
          });
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        isCollapsed: true,
        items: _items,
        avatarImg: _avatarImg,
        title: 'Sd CARDOSO',
        // onTitleTap: () {
        //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        //       content: Text('Yay! Flutter Collapsible Sidebar!')));
        // },
        body: _body(size, context),
        backgroundColor: const Color(0Xff111111),
        selectedTextColor: const Color(0xff999999),
        textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.normal),
        titleStyle: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        toggleTitleStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        sidebarBoxShadow: const [
          BoxShadow(
            color: Color(0xff666666),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(3, 0),
          ),
        ],
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: _headline,
      ),
    );
  }
}
