import 'package:flutter/material.dart';

class Bmicalculator extends StatefulWidget {
  const Bmicalculator({super.key});

  @override
  State<Bmicalculator> createState() => _BmicalculatorState();
}

class _BmicalculatorState extends State<Bmicalculator> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double result=0;
  void bmicalculator() {
    double Height = double.parse(_height.text) / 100;
    double Weight = double.parse(_weight.text);

    double Heightsquare = Height * Height;

    result = Weight / Heightsquare;
    setState(() {
      result=result;
    });
    print(result);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _height,
            decoration: InputDecoration(
                icon: Icon(Icons.turn_slight_right_sharp),
                labelText: 'Height in CM'),
          ),
          TextField(
            controller: _weight,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent)),
                icon: Icon(Icons.menu),
                labelText: 'Weight in KG'),
          ),
          ElevatedButton(
              onPressed: () {
                bmicalculator();
              },
              child: Text('calculate')),
          Text(result.toString())
        ],
      ),
    );
  }
}
