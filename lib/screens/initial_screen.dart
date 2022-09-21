import 'package:flutter/material.dart';
import 'package:projeto/components/task_widget.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              nome: 'Andar de Bike',
              foto:
                  'assets/images/bike.jpg',
              dificuldade: 2,
            ),
            Task(
              nome: 'Ler Clean code',
              foto:
                  'assets/images/ler.jpg',
              dificuldade: 4,
            ),
            Task(
              nome: 'Estudar',
              foto:
                  'assets/images/ler.jpg',
              dificuldade: 4,
            ),
            Task(
              nome: 'Meditar',
              foto:
                  'assets/images/meditar.jpeg',
              dificuldade: 5,
            ),
            Task(
              nome: 'Jogar a vida fora',
              foto: 'assets/images/jogar.jpg',
              dificuldade: 1,
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
