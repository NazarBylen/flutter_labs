import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CounterIterate(),
  ),);
}

class CounterIterate extends StatefulWidget {
  const CounterIterate({ super.key });

  @override
  State<CounterIterate> createState() => _CounterIterate();
}

class _CounterIterate extends State<CounterIterate> {

  int result = 0;

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('LAB 1', style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          backgroundColor: Colors.blueGrey[600],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children:
                            <Widget>[
                              SizedBox(width: 100,
                                child: TextField(
                                controller: myController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Number To Increment',
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                ),
                              ),),
                            ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text('$result'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final value = int.tryParse(myController.text);
              if (value == null) {
                result = 0;
              }
              else {
                result = value;
              }
            });
          },
          backgroundColor: Colors.blueGrey,
          child: const Icon(Icons.edit_rounded, color: Colors.white,),
        ),
      );
  }
}
