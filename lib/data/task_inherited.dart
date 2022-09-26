import 'package:flutter/material.dart';
import 'package:projeto/components/task_widget.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task(nome: 'Andar de Bike', foto: 'assets/images/bike.jpg', dificuldade: 2),
    Task(nome: 'Ler Clean code', foto: 'assets/images/ler.jpg', dificuldade: 4),
    Task(nome: 'Estudar', foto: 'assets/images/ler.jpg', dificuldade: 4),
    Task(nome: 'Meditar', foto: 'assets/images/meditar.jpeg', dificuldade: 5),
    Task(
        nome: 'Jogar a vida fora',
        foto: 'assets/images/jogar.jpg',
        dificuldade: 1),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(nome: name, foto: photo, dificuldade: difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }

  double avaliaLevelGeral() {
    double calc = 0;
    for (Task atividade in taskList) {
      if (atividade.dificuldade > 0) {
        calc += atividade.dificuldade * atividade.nivel / 10;
      } else {
        calc += 0;
      }
    }
    return calc;
  }
}
