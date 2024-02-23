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

                        Text("${result}")
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}