import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/form.dart';

class pmiPage extends StatefulWidget {
  pmiPage({super.key, required this.bmi});
  double bmi;

  @override
  State<pmiPage> createState() => _pmiPageState();
}

class _pmiPageState extends State<pmiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'BMI CALCULATOR',
            style:
                TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Yor Result',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                '${widget.bmi.toStringAsFixed(1)}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              if (widget.bmi < 25 &&widget.bmi>18.5)
                Text(
                  'Normal',
                  style: TextStyle(color: Color.fromARGB(255, 14, 214, 7), fontSize: 20),
                )
              else if (widget.bmi < 18.5 )
                Text(
                  'UNDER WEIGHT',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                  ),
                )
                else if (widget.bmi >25)
                Text(
                  'OVER WEIGHT',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  '        Re calculate        ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
