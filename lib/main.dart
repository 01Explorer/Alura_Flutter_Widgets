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
          body: ListView(
            children: [
              Task(
                nome: 'Andar de Bike com a minha namorada pq eu não tenho ideia doq colocar',
              ),
              Task(
                nome: 'Ler Clean code',
              ),
              Task(
                nome: 'Estudar',
              ),
              Task(
                nome: 'Não sei',
              ),
              Task(
                nome: 'Halo',
              ),
              Task(
                nome: 'Hey',
              ),
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
                  Container(
                    width: 200,
                    child: Text(
                      nome,
                      style: TextStyle(
                        fontSize: 24,
                        overflow: TextOverflow.ellipsis
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Column(
                      children: const [
                        Icon(Icons.arrow_drop_up),
                        Text('Lvl Up')
                      ],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
