import 'package:flutter/material.dart';
import 'package:sqflite_temp2/widgets/user_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple todo app'),
      ),
      body: Column(
        children: [
          UserInput(),
        ],
      ),
    );
  }
}
