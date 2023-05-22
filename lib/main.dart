import 'package:flutter/material.dart';
import 'formulario.dart';
import 'inicial.dart';
import 'cadastro.dart';
import 'login.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
   @override
 
  Widget build(BuildContext context) {
    return MaterialApp(
    routes: {
      '/inicial':(context) => Inicial(),
      '/formulario':(context) => Formulario(),
      '/cadastro':(context) => Cadastro(),
      '/login':(context) => Login()
    },
    initialRoute: '/formulario',
    );
  }
}
