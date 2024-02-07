import '../domain/todo.dart';

class TodoService {
  static List<Todo> todos = [];

  static void addNewTodo(String title){
    todos.add(Todo(title: title, isChecked: false));
  }
}