import 'package:flutter/material.dart';
import 'dart:math';

String sorteia() {
  final random = Random();
  return random.nextInt(100).toString();
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final tema = Theme.of(context);
    final bgcolor = tema.colorScheme.inversePrimary;

    
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: bgcolor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Número Sorteado: ${sorteia()} !"),
                  ),
                );
              },
              child: const Text("Sortear"),
            ),
          ],
        ),
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aula 03",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
