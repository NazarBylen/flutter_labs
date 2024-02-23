import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: counter_iterate()
  ));
}

class counter_iterate extends StatefulWidget {
  const counter_iterate({ super.key });

  @override
  State<counter_iterate> createState() => _counter_iterate();
}

class _counter_iterate extends State<counter_iterate> {

  int result = 0;

  final MyController = TextEditingController();

  @override
  void dispose() {
    MyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("LAB 1", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
          backgroundColor: Colors.blueGrey[600],
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            children:
                              <Widget>[
                                SizedBox(width: 100,
                                  child: TextField(
                                  controller: MyController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Number To Increment",
                                    fillColor: Colors.grey[200],
                                    filled: true,
                                  ),
                                ),),
                              ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("${result}"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              var value = int.tryParse(MyController.text);
              if (value == null) {
                result = 0;
              }
              else {
                result = value;
              }
            });
          },
          child: Icon(Icons.edit_rounded, color: Colors.white,),
          backgroundColor: Colors.blueGrey,
        ),
      );
  }
}