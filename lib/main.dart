import 'package:flutter/material.dart';

import "Cracha.dart";
import "CartaoVendas.dart";
import "Participantes.dart";

void main() {
  // CORREÇÃO: Iniciamos o app pelo MyApp para carregar as configurações do MaterialApp
  runApp(const MaterialApp(home: TerceiraTela()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // DICA: Mude para 'const TerceiraTela()' aqui caso queira testar o formulário direto ao abrir o app
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _irParaCracha() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Cracha()),
    );
  }

  void _irParaCartaoVendas() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartaoVendas()),
    );
  }

  // Nova navegação criada para você conseguir acessar sua tela de cadastro
  void _irParaTerceiraTela() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TerceiraTela()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Text(
                _counter >= 20
                    ? 'Pelo amor de Deus, para de apertar esse botão!'
                    : 'Clique no botão de mais para aumentar o contador.',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _irParaCracha,
                    child: const Text('Abrir segunda tela'),
                  ),
                  ElevatedButton(
                    onPressed: _irParaCartaoVendas,
                    child: const Text('Abrir Cartao de Vendas'),
                  ),
                  // Botão adicionado para facilitar seu teste de navegação
                  ElevatedButton(
                    onPressed: _irParaTerceiraTela,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade100,
                    ),
                    child: const Text('Abrir Cadastro'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Meu primeiro container",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Matcha",
                      ),
                    ),
                    SizedBox(
                      width: 500,
                      height: 70.0,
                      child: FloatingActionButton(
                        onPressed: _incrementCounter, // Associado para dar utilidade ao clique
                        tooltip: "Ver mais",
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        splashColor: Colors.blueAccent,
                        elevation: 6.0,
                        hoverElevation: 10.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "Aumentar Contador",
                          style: TextStyle(fontFamily: "Matcha"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.insert_photo_rounded,
                          color: Colors.blueAccent,
                          size: 28,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Produto bem avaliado",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: "Decrement",
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: "Increment",
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class TerceiraTela extends StatefulWidget {
  const TerceiraTela({super.key});

  @override
  State<TerceiraTela> createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
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
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        for (var participante in listaParticipantes) {
                          print("""
  ===== PARTICIPANTE =====
  Nome: ${participante.nome}
  E-mail: ${participante.email}
  Telefone: ${participante.telefone}
  Idade: ${participante.idade}
  Evento: ${participante.evento}
  ========================
  """);
                        }
                      },
                      child: const Text("Listar Participantes"),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
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

class _MinhaTelaState extends State<QuartaTela> {
  int contador = 0;
  String mensagem = "Vectra 2.2 turbo 2012";
  String cumprimento = "Bom dia!";
  bool mostraBomdia = false;
  bool mostraBoanoite = true;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  void mudarMensagem() {
    setState(() {
      mensagem = "mensagem";
    });
  }

  void bomdia() {
    setState(() {
      cumprimento = "Bom dia!";
      mostraBomdia = false;
    });
  }

  void boanoite() {
    setState(() {
      cumprimento = "Boa noite!";
      mostraBomdia = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Column(
              mainAxisAlignment: .center,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: decrementar,
                      icon: const Icon(Icons.remove),
                    ),
                    const SizedBox(width: 8),
                    Text("O vectra possui $contador cilindros"),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: incrementar,
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(mensagem),
                    SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: mudarMensagem,
                      child: Text("Mudar mensagem"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    if (mostraBomdia == true)
                      ElevatedButton(onPressed: bomdia, child: Text("Bom dia!"))
                    else
                      ElevatedButton(
                        onPressed: boanoite,
                        child: Text("Boa noite!"),
                      ),

                    SizedBox(width: 12),

                    SizedBox(width: 12),
                    Text(cumprimento),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuartaTela extends StatefulWidget {
  const QuartaTela({super.key});

  @override
  State<QuartaTela> createState() => _MinhaTelaState();
}
