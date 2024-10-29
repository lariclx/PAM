import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class Tarefa {
  final String id;
  final String titulo;
  final bool finalizada;

  Tarefa({
    required this.id,
    required this.titulo,
    required this.finalizada,
  });

  factory Tarefa.titulo(String titulo) {
    return Tarefa(
      id: _uuid.v7(),
      titulo: titulo,
      finalizada: false,
    );
  }

  Tarefa finalizar() {
    return Tarefa(
      id: id,
      titulo: titulo,
      finalizada: true,
    );
  }
  
}
