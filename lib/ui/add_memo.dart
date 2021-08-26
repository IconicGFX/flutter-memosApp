import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewMemo extends StatefulWidget {
  const NewMemo({Key? key}) : super(key: key);

  @override
  _NewMemoState createState() => _NewMemoState();
}

class _NewMemoState extends State<NewMemo> {
  @override
  Widget build(BuildContext context) {
    var _titleHandler = new TextEditingController();
    var _bodyHandler = new TextEditingController();
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Add New Memo'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                controller: _titleHandler,
                decoration: InputDecoration(
                  hintText: 'Title',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.greenAccent)),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: TextField(
                  maxLines: double.maxFinite.floor(),
                  keyboardType: TextInputType.multiline,
                  controller: _bodyHandler,
                  decoration: InputDecoration(
                    hintText: 'Body',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent)),
                    border: OutlineInputBorder(),
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            new ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.greenAccent)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: new Text('Save')),
          ],
        ),
      ),
    );
  }
}
