import 'package:flutter/material.dart';
import 'formulario.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  String nome = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
        ),
        body: Column(children: [
          const Center(
            child: Image(
              width: 70, //proporção da imagem
              height: 70,

              image: AssetImage('assets/logo.png'),
            ),
          ),
          Formulario()
        ]),
      ),
    );
  }
}
