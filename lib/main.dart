import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);

    final bgColor = tema.colorScheme.inversePrimary;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: bgColor,
        centerTitle: true,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Segunda Feira"),
              Text("Larissa"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3"),
                  Text("2024"),
                ],
              ),
            ],
          ),
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
      title: "Aula",
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
