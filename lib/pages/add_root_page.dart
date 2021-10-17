import 'package:flutter/material.dart';

class AddRootPage extends StatefulWidget {
  const AddRootPage({Key? key}) : super(key: key);

  @override
  _AddRootPageState createState() => _AddRootPageState();
}

class _AddRootPageState extends State<AddRootPage> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("temptemp"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'name'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
