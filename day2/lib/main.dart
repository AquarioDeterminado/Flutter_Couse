import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(child: Center(child: Text('00.00')),),
            Expanded(
              child: Row(
                spacing: 12.0,
                children: [
                  Expanded(child: Center(child: Text('1'))),
                  Expanded(child: Center(child: Text('2'))),
                  Expanded(child: Center(child: Text('3'))),
                ],
              ),
            ),
            Expanded(
              child: Row(
                spacing: 12.0,
                children: [
                  Expanded(child: Center(child: Text('4'))),
                  Expanded(child: Center(child: Text('5'))),
                  Expanded(child: Center(child: Text('6')))
                ],
              ),
            ),
            Expanded(
              child: Row(
                spacing: 12.0,
                children: [
                  Expanded(child: Center(child: Text('7'))),
                  Expanded(child: Center(child: Text('8'))),
                  Expanded(child: Center(child: Text('9')))
                ],
              ),
            ),
            Expanded(
              child: Row(
                spacing: 12.0,
                children: [
                  Expanded(child: Center(child: Text('C'))),
                  Expanded(child: Center(child: Icon(Icons.backspace))),
                  Expanded(child: Center(child: Text('=')))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}