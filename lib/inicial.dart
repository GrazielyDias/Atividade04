import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  @override
  _InicialState createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.purple, //Cor do AppBar
      ),
      body: Container(
        color: Colors.yellow,// Cor do fundo
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bem-vindo!',
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple, // Cor do Texto
                ),
              ),
              SizedBox(height: 16),
              Icon(
                Icons.sentiment_satisfied,
                size: 100,
                color: Colors.green, // Cor do emoji aqui
              ),
            ],
          ),
        ),
      ),
    );
  }
}
