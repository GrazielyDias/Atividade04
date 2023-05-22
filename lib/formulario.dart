import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        // titleTextStyle: TextStyle(
        //   color: Colors.white,
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        // ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 15),
                      Image.asset(
                        'assets/logo.png',
                        width: 90,
                        height: 90,
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 20.0, 0),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            labelText: 'Nome',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == "Emi" || value == "Grazy") {}

                            if (value!.isEmpty) {
                              return 'Nome Inválido';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        margin: const EdgeInsets.fromLTRB(15.0, 0.0, 20.0, 0),
                        child: TextFormField(
                          obscureText: true, // Ocultar senha
                          decoration: const InputDecoration(
                            labelText: "Senha",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Informe alguma senha';
                            }
                            if (value != "8401") {
                              return 'Senha incorreta';
                            }
                            if (value.length < 3) {
                              return "Senha Inválida";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.pushNamed(context, '/inicial');
                            }
                          },
                          child: Text(
                            "Enviar",
                            style: TextStyle(
                              // color: Colors.white,
                              // fontSize: 16,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.purple,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/cadastro');
                        },
                        child: const Text(
                          "Novo Cadastro",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
