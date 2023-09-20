import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/tols.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  double value = 0;

  int age = 0;
  int weight = 0;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 0) {
        age--;
      }
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  void decrementWeight() {
    setState(() {
      if (weight > 0) {
        weight--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      height: 150,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'male',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      height: 150,
                      color: Colors.black.withOpacity(0.5),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'female',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '${value.toInt()}',
            style: TextStyle(color: Colors.black, fontSize: 70),
          ),
          Slider(
            max: 200,
            min: 0,
            value: value,
            onChanged: (v) {
              print(v);
              setState(() {
                value = v;
              });
            },
            activeColor: Colors.black,
            thumbColor: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Age: $age',
                    style: TextStyle(fontSize: 24),
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: decrementAge,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: incrementAge,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Weight: $weight',
                style: TextStyle(fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: decrementWeight,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: incrementWeight,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              double bmi = (weight / 100) / ((value / 1000) * (value / 1000));
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => pmiPage(
                          bmi: bmi,
                        )),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: Text(
              'CALCULATOR',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
