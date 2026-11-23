import 'package:flutter/material.dart';
import 'package:tarefa_botoes/sucesso.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
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

                // Lista de Participantes Cadastrados na Tela
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (listaParticipantes.isNotEmpty)
                      for (var participante in listaParticipantes)
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                          ),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[200],
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: const BoxDecoration(
                                        color: Colors.blueGrey,
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.person,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${participante.nome}",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 2),
                                          Text(
                                            "${participante.email}",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "${participante.idade} anos",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        )
                    else
                      const Text(
                        "Não há participantes cadastrados",
                        style: TextStyle(color: Colors.grey),
                      ),
                  ],
                ),
                const SizedBox(height: 30),

                // Botões de Ação
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Ação do botão listar
                        },
                        child: const Text("Listar"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            final novoParticipante = Participante(
                              nome: nome,
                              email: email,
                              idade: idade,
                              evento: evento,
                              telefone: telefone,
                            );

                            setState(() {
                              listaParticipantes.add(novoParticipante);
                            });

                            // Navega para a tela de sucesso
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    TelaSucesso(participante: novoParticipante),
                              ),
                            ).then((_) {
                              // Reseta o form apenas quando voltar da outra tela (opcional)
                              _formKey.currentState!.reset();
                            });
                          }
                        },
                        child: const Text("Salvar"),
                      ),
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
