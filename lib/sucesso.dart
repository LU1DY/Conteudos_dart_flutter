import 'package:flutter/material.dart';

import "Participantes.dart";

class TelaSucesso extends StatefulWidget {
  final Participante participante;

  const TelaSucesso({super.key, required this.participante});

  @override
  State<TelaSucesso> createState() => Sucesso();
}

class Sucesso extends State<TelaSucesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inscrição confirmada!')),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Icon(Icons.check, size: 64, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text("Cadastro realizado com sucesso!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38) ),
            const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  "Participante: ${widget.participante.nome}",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  "Evento: ${widget.participante.evento}",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  "E-mail: ${widget.participante.email}",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, 
                foregroundColor: Colors.white,
                fixedSize: const Size(250, 35),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  const SizedBox(width: 12),
                  Text("Voltar para o cadastro."),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
