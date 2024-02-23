import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: countTwoNumbers()
  ));
}

class countTwoNumbers extends StatefulWidget {
  const countTwoNumbers({ super.key });

  @override
  State<countTwoNumbers> createState() => _countTwoNumbers();
}

class _countTwoNumbers extends State<countTwoNumbers> {
  String line1 = "bla1";
  String line2 = "bla2";
  String result = "";

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
                        Text("first line - ${line1}"),
                        Text("second line - ${line2}"),
                        Text("${result}")
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
              result = line1 + line2;
            });
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.blueGrey,
        ),
      );
  }
}