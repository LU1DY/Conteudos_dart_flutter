import 'package:flutter/material.dart';

void main() {
  runApp(const QuartaTela());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuartaTela(),
    );
  }
}

class QuartaTela extends StatefulWidget {
  const QuartaTela({super.key});

  @override
  State<QuartaTela> createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<QuartaTela> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo Vectra')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("O vectra possui $contador cilindros"),
            const SizedBox(width: 8),
            IconButton(onPressed: incrementar, icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
