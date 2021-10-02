import 'package:flutter/material.dart';
import 'package:sqflite_temp2/models/db_model.dart';
import 'package:sqflite_temp2/widgets/todo_card.dart';

class TodoList extends StatelessWidget {
  final Function insertFunction;
  final Function deleteFunction;

  final db = DatabaseConnect();
  TodoList(
      {required this.insertFunction, required this.deleteFunction, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: db.getTodo(),
        initialData: const [],
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
                        id: snapshot.data![i].id,
                        title: snapshot.data![i].title,
                        creationDate: snapshot.data![i].creationDate,
                        isChecked: snapshot.data![i].isChecked,
                        insertFunction: insertFunction,
                        deleteFunction: deleteFunction,
                      ));
        }
        // if (!snapshot.hasData) {
        //   const Center(
        //     child: Text('no data found'),
        //   );
        // } else {
        //   return ListView.builder(
        //     itemCount: snapshot.data!.length,
        //     itemBuilder: (context, i) => Todocard(
        //       id: snapshot.data![i].id,
        //       title: snapshot.data![i].title,
        //       creationDate: snapshot.data![i].creationDate,
        //       isChecked: snapshot.data![i].isChecked,
        //       insertFunction: insertFunction,
        //       deleteFunction: deleteFunction,
        //     ),
        //   );
        // }
        ,
      ),
    );
  }
}
