import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testcallback/features/list/domain/todo.dart';



/// TODO Widget: Funktion A
///    - TodoItem Widgets (Stateless Widget) - Funktion A
///    - TodoItem Widgets (Stateless Widget) - Funktion A
///


class TodoItemAddScreen extends StatefulWidget {
  const TodoItemAddScreen({super.key});

  @override
  State<TodoItemAddScreen> createState() => _TodoItemAddScreenState();
}

class _TodoItemAddScreenState extends State<TodoItemAddScreen> {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
          ),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: () => Navigator.pop(context, textController.text), child: Text("Fertig"))
        ],
      ),
    );
  }
}
