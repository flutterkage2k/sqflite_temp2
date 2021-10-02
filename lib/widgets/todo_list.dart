import 'package:flutter/material.dart';
import 'package:sqflite_temp2/models/db_model.dart';
import 'package:sqflite_temp2/widgets/todo_card.dart';

class TodoList extends StatelessWidget {
  final db = DatabaseConnect();
  TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: db.getTodo(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          var data = snapshot.data;
          var datalength = data!.length;

          return datalength == 0
              ? const Center(
                  child: Text('no data found'),
                )
              : ListView.builder(
                  itemCount: datalength,
                  itemBuilder: (context, i) => Todocard(
                    id: data[i].id,
                    title: data[i].title,
                    creationDate: data[i].creationDate,
                    isChecked: data[i].isChecked,
                    insertFunction: () {},
                    deleteFunction: () {},
                  ),
                );
        },
      ),
    );
  }
}
