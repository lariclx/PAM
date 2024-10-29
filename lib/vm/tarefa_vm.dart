import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tarefa/entidade/tarefa.dart';

class TarefaViewModel extends ChangeNotifier {
  final List<Tarefa> _tarefas = [];

  void addTarefa(String titulo) {
    _tarefas.add(Tarefa.titulo(titulo));
    notifyListeners();
  }

  List<Tarefa> get tarefas => _tarefas;

  static ChangeNotifierProvider<TarefaViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => TarefaViewModel(),
      );
}
