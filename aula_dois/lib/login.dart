import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image(
                image: AssetImage("assets/logo.jpg"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Login",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white24,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.amber[50],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white24,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.amber[50]),
                obscureText: true,
              ),
            ),
            Container(
                child: ElevatedButton(
              onPressed: () {},
              child: Text("Entrar"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 56),
                // primary: Color(0xff3A3A61),
                onPrimary: Colors.white,
                textStyle: TextStyle(
                  // color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
