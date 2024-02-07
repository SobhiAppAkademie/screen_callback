import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testcallback/features/list/application/TodoService.dart';
import 'package:testcallback/features/list/presentation/todo_add_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  // Navigator

  // Main  ----------> Second Screen
  // Main: State Pausiert -----> Second Screen: State ausgeführt

  void addNewTodo(String title) {
    TodoService.addNewTodo(title);
    setState(() {});
  }

  void newScreenAddTodo() async {
    String? title = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => const TodoItemAddScreen()));

    if(title != null){
      addNewTodo(title);
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Expanded(
                child: ListView.builder(
                    itemCount: TodoService.todos.length,
                    itemBuilder: (context, index) {
                      return Text(TodoService.todos[index].title);
                    }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => newScreenAddTodo(),

      ),
    );
  }
}
