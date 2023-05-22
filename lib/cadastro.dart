import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Usuários',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Cadastro de Usuários'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _cadastros = [];
  String _nome = '';
  String _email = '';
  String _telefone = '';

  Widget _buildForm() {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Nome',
          ),
          onChanged: (value) {
            _nome = value;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'E-mail',
          ),
          onChanged: (value) {
            _email = value;
          },
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Telefone',
          ),
          onChanged: (value) {
            _telefone = value;
          },
        ),
        ElevatedButton(
          onPressed: _cadastrar,
          child: const Text('Cadastrar'),
        ),
      ],
    );
  }

  void _cadastrar() {
    setState(() {
      _cadastros.add('Nome: $_nome, E-mail: $_email, Telefone: $_telefone');
      _nome = '';
      _email = '';
      _telefone = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildForm(),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _cadastros.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_cadastros[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
