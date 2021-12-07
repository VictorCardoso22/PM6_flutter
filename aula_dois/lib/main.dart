import 'package:aula_dois/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               height: 160,
//               child: const Image(
//                 image: AssetImage("assets/logo.jpg"),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(16),
//               margin: EdgeInsets.all(16),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     labelText: "Login",
//                     filled: true,
//                     fillColor: Colors.amber[50]),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(16),
//               margin: EdgeInsets.all(16),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                     labelText: "Senha",
//                     filled: true,
//                     fillColor: Colors.amber[50]),
//               ),
//             ),
//             Container(
//               child: ElevatedButton(onPressed: () {}, child: Text("Entrar")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
