import 'package:flutter/material.dart';
import 'package:sqflite_temp2/models/db_model.dart';
import 'package:sqflite_temp2/models/todo_model.dart';
import 'package:sqflite_temp2/widgets/todo_list.dart';
import 'package:sqflite_temp2/widgets/user_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final db = DatabaseConnect();

  void addItem(Todo todo) async {
    await db.insertTodo(todo);
    setState(() {});
  }

  void deleteItem(Todo todo) async {
    await db.deleteTodo(todo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple todo app'),
      ),
      body: Column(
        children: [
          TodoList(
            insertFunction: addItem,
            deleteFunction: deleteItem,
          ),
          UserInput(
            insertFunction: addItem,
          ),
        ],
      ),
    );
  }
}
