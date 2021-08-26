import 'package:flutter/material.dart';
import 'package:memos/ui/add_memo.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEMOS'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewMemo()),
          );
        },
        label: Text('Add'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.greenAccent,
      ),
      body: new ListView.builder(itemCount: 20, itemBuilder: itemBuilder),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Center(
      child: Text('Memo Title'),
    );
  }
}
