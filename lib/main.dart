import 'package:flutter/material.dart';

import './question_widget.dart';
import './input_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double bill;
  double tip;
  var persons;

  TextEditingController inputBill = TextEditingController();
  TextEditingController inputPersons = TextEditingController();

  String billPerPerson;

  String calculateBill(bill, tip, persons) {
    var totalBill = bill * (1 + tip);
    return (totalBill / persons).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tip Calculator"),
        ),
        body: Column(
          children: [
            SizedBox(height: 50),
            Question(questionText: "How much did you spent?"),
            Input(controller: inputBill),
            SizedBox(height: 50),
            Question(questionText: "How much do you want to tip?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: Text("10%"),
                  onTap: () {
                    print('10%');
                    tip = 0.1;
                  },
                ),
                Text("12%"),
                Text("15%"),
              ],
            ),
            SizedBox(height: 50),
            Question(questionText: "How many people are you?"),
            Input(controller: inputPersons),
            SizedBox(height: 50),
            RaisedButton(
              onPressed: () {
                bill = double.parse(inputBill.text);
                persons = int.parse(inputPersons.text);
                setState(() {
                  billPerPerson = calculateBill(bill, tip, persons);
                });
              },
              child: Text("Calculate Bill"),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Each person has to pay: $billPerPerson.")
          ],
        ),
      ),
    );
  }
}
