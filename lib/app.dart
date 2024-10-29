import 'package:flutter/material.dart';
import 'package:tarefa/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarefas",
      routes:{
        "/": (_) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}