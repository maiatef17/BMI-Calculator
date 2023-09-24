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
              Container(
                width: 500,
                height: 620,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 40, 39, 39),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    if (widget.bmi < 25 && widget.bmi > 18.5)
                      Text(
                        'Normal',
                        style: TextStyle(
                            color: Color.fromARGB(255, 14, 214, 7),
                            fontSize: 20),
                      )
                    else if (widget.bmi < 18.5)
                      Text(
                        'UNDER WEIGHT',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                        ),
                      )
                    else if (widget.bmi > 25)
                      Text(
                        'OVER WEIGHT',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                        ),
                      ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '${widget.bmi.toStringAsFixed(1)}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50,),
                    if (widget.bmi < 25 && widget.bmi > 18.5)
                      Text(
                        ' You have a normal body weight, Good Job!',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    else if (widget.bmi < 18.5)
                      Text(
                        ' You have a lower than normal body weight!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    else if (widget.bmi > 25)
                      Text(
                        ' Your have a higher than normal body weight!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(height: 40,),
                      ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),onPressed: (){}, child: Text(
                  'SAVE RESULT',
                  style: TextStyle(color: Colors.white),
                ),)
                  ],
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(
                  '                                      RE CALCULATE                                         ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
