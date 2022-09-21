import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tarefas'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Task(nome: 'Andar de Bike',),
              Task(nome: 'Ler Clean code',),
              Task(nome: 'Estudar para Prova',),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            debugPrint('Hallow');
          }),
        ));
  }
}

class Task extends StatelessWidget {
  final String nome;

  const Task({
    Key? key,
    required this.nome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: 140,
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.black26,
                  width: 72,
                  height: 100,
                ),
                Text(nome),
                ElevatedButton(
                  child: Column(
                    children: const [Icon(Icons.arrow_drop_up), Text('Lvl Up')],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}