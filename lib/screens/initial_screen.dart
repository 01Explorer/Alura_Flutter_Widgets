import 'package:flutter/material.dart';
import 'package:projeto/data/task_inherited.dart';
import 'package:projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  double valorProgresso = 0;
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
        actions: [
          ElevatedButton(
            onPressed: () {
              valorProgresso = TaskInherited.of(context).avaliaLevelGeral();
              setState(() {
                
              });
              debugPrint('$valorProgresso');
            },
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: LinearProgressIndicator(
                    color: Colors.white,
                    value: valorProgresso < 10 ? valorProgresso/10 : valorProgresso/100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Level $valorProgresso',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
