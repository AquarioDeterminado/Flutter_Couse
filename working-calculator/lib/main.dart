import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

String doOperation(String first, String second, String operation) {
  double? num1 = double.tryParse(first);
  double? num2 = double.tryParse(second);

  if (num1 == null || num2 == null || operation == '') {
    print('Invalid Operation!');
    return 'Error';
  }

  String result = 'Error';

  switch (operation) {
    case '+':
      result = (num1 + num2).toString();
      break;
    case '-':
      result = (num1 - num2).toString();
      break;
    case '*':
      result = (num1 * num2).toString();
      break;
    default:
      result = 'Error';
      break;
  }

  return result;
}

class Number extends StatelessWidget {
  final String number;

  const Number({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0), child: Text(number));
  }
}

class Operation extends StatelessWidget {
  final String operation;

  const Operation({super.key, required this.operation});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0), child: Text(operation));
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> keys = ['1', '2', '3',
                                 '4', '5', '6', 
                                '7', '8', '9', 
                                '0', '+', '-',
                                '*', 'C', '='];
  String displayText = '00,00';

  String first = '';
  String second = '';
  String operation = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                displayText, textAlign: TextAlign.left
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 600,
                width: 200,
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,   // Space between columns
                  mainAxisSpacing: 10,
                  
                  children: keys.map((key) {
                    if (int.tryParse(key) != null) {
                      return GestureDetector(child: Number(number: key), onTap: () { setState(() {
                                                if (operation == '') {
                                                  first += key;
                                                  displayText = first;
                                                } else {
                                                  second += key;
                                                  displayText = second;
                                                }
                                              });
                      });
                    }
                    else {
                      return GestureDetector(child: Operation(operation: key), onTap: () => {
                                                if (key == '=') {
                                                  setState(() {
                                                    displayText = doOperation(first, second, operation);
                                                    print('Result: $displayText');
                                                    first = '';
                                                    second = '';
                                                    operation = '';
                                                  })
                                                }
                                                else {
                                                  operation = key
                                                }
                      });
                    }                          
                  }
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}