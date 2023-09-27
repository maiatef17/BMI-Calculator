import 'package:flutter/material.dart';
import 'package:flutter_application_5/pages/pmi_page.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  double value = 0;
bool isMaleSelected = false;
bool isFemaleSelected = false;

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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(15),child: ListView(
        children: [
          Row(
  children: [
    GestureDetector(
      onTap: () {
        setState(() {
          isMaleSelected = true;
          isFemaleSelected = false;
        });
      },
      child: Container(
        width: 185,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 150,
            color: isMaleSelected ? Colors.grey : Color.fromARGB(255, 40, 39, 39),
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
                  'MALE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: isMaleSelected ? Colors.white : Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      width: 10,
    ),
    GestureDetector(
      onTap: () {
        setState(() {
          isMaleSelected = false;
          isFemaleSelected = true;
        });
      },
      child: Container(
        width: 185,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 150,
            color: isFemaleSelected ? Colors.grey : Color.fromARGB(255, 40, 39, 39),
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
                  'FEMALE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: isFemaleSelected ? Colors.white : Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ],
),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 40, 39, 39),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'HEIGHT',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${value.toInt()}',
                      style: TextStyle(color: Colors.white, fontSize: 80),
                    ),
                    Text('cm',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20))
                  ],
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
                  inactiveColor: Colors.grey,
                  activeColor: Colors.white,
                  thumbColor: Colors.red,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 185,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      height: 150,
                      color: Color.fromARGB(255, 40, 39, 39),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style:
                                    TextStyle(fontSize: 24, color: Colors.grey),
                              ),
                              Text(
                                '$age',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    onPressed: decrementAge,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    onPressed: incrementAge,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 185,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 150,
                    color: Color.fromARGB(255, 40, 39, 39),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 24, color: Colors.grey),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(width: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              onPressed: decrementWeight,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton(
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              onPressed: incrementWeight,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Spacer(),
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
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              'CALCULATE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),)
    );
  }
}
