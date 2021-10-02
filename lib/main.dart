import 'package:flutter/material.dart';
import 'package:sqflite_temp2/models/todo_model.dart';
import 'package:sqflite_temp2/models/db_model.dart';
import 'package:sqflite_temp2/screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var db = DatabaseConnect();
  await db.insertTodo(Todo(
      id: 1,
      title: 'this is the sample todo',
      creationDate: DateTime.now(),
      isChecked: false));
  print(await db.getTodo());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
