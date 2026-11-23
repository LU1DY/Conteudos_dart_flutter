import 'package:flutter/material.dart';

import "Participantes.dart";

void main() {
  runApp(const MaterialApp(home: TerceiraTela()));
}

class TerceiraTela extends StatefulWidget {
  const TerceiraTela({super.key});

  @override
  State<TerceiraTela> createState() => Cadastro();
}

class Cadastro extends State<TerceiraTela> {
  final _formKey = GlobalKey<FormState>();

  String nome = "";
  String email = "";
  String telefone = "";
  int idade = 0;
  String evento = "";
  List<Participante> listaParticipantes = [];
  String mensagem = "";

  void sucessoMensagem() {
    mensagem = "Cadastrar participante";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar Participante')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    hintText: "Insira seu nome: ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Você não informou o nome corretamente";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    nome = value?.trim() ?? "";
                    nome = nome;
                  },
                ),
                const SizedBox(height: 20),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Insira seu e-mail: ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || !value.contains("@")) {
                      return "Digite um e-mail válido";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value?.trim() ?? "";
                  },
                ),
                const SizedBox(height: 20),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Telefone: (xx) xxxx-xxxx",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        value.length > 11) {
                      return "Informe um número válido com DDD!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    telefone = value?.trim() ?? "";
                  },
                ),
                const SizedBox(height: 20),

                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Idade",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Informe a idade!";
                    }
                    final idadeNum = int.tryParse(value);
                    if (idadeNum == null || idadeNum < 0) {
                      return "Informe uma idade válida!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    idade = int.parse(value!);
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Evento",
                    hintText: "Insira o nome do evento",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Informe o nome do evento!";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    evento = value?.trim() ?? "";
                  },
                ),
                const SizedBox(height: 30),
                Text(mensagem),
                const SizedBox(height: 30),
                Column(
                  children: [
                    if (listaParticipantes.isNotEmpty)
                      for (var participante in listaParticipantes)
                        Text("${participante.nome}")
                    else
                      const Text("Não há participantes cadastrados"),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Listar Participantes"),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          mensagem = "Participante cadastrado com sucesso";
                          setState(() {
                            listaParticipantes.add(
                              Participante(
                                nome: nome,
                                email: email,
                                idade: idade,
                                evento: evento,
                                telefone: telefone,
                              ),
                            );
                            _formKey.currentState!.reset();
                          });
                        } else {
                          mensagem = "Falha ao cadastrar participante";
                        }
                      },
                      child: const Text("Salvar Cadastro"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Participantes extends State<TerceiraTela> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Cadastrar Participante')),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Form(
//           key: _formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         for (var participante in listaParticipantes) {
//                           print("""
//   ===== PARTICIPANTE =====
//   Nome: ${participante.nome}
//   E-mail: ${participante.email}
//   Telefone: ${participante.telefone}
//   Idade: ${participante.idade}
//   Evento: ${participante.evento}
//   ========================
//   """);
//                         }
//                       },
//                       child: const Text("Listar Participantes"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
