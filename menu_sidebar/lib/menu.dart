import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:menu_sidebar/escala/escala.dart';

import 'package:menu_sidebar/home.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Lateral"),
        backgroundColor: Color(0xff222222),
      ),
      body: SafeArea(child: SidebarPage()),
    );
  }
}

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  late List<CollapsibleItem> _items;
  late Widget _headline;
  AssetImage _avatarImg = AssetImage('assets/user.png');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = Escala();
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: () {
          setState(() {
            _headline = const Escala();
          });
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () {
          setState(() {
            _headline = const Home();
          });
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Home2()),
          // );
        },
        // isSelected: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: CollapsibleSidebar(
          isCollapsed: true,
          items: _items,
          avatarImg: _avatarImg,
          title: 'Nome',
          onTitleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Yay! Flutter Collapsible Sidebar!')));
          },
          body: _body(size, context),
          backgroundColor: Colors.black,
          selectedTextColor: Color(0xff999999),
          textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
          titleStyle: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
          toggleTitleStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          sidebarBoxShadow: const [
            BoxShadow(
              color: Color(0xff333333),
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(3, 0),
            ),
            // BoxShadow(
            //   color:  Color(0xff333333),
            //   blurRadius: 50,
            //   spreadRadius: 0.01,
            //   offset: Offset(3, 3),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueGrey[50],
      child: Container(
        padding: EdgeInsets.all(16),
        child: _headline,
      ),
    );
  }
}


//  child: Transform.rotate(
//           angle: math.pi / 2,
//           child: Transform.translate(
//             offset: Offset(-size.height * 0.3, -size.width * 0.23),
//             child: Container(
//               child: _headline,
//             ),
//           ),
//         ),