import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_result_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {

  Color colorFemale = Colors.grey ;
  Color colorMale = Colors.grey ;

  double height = 120 ;
  int age = 8;
  int weight = 35 ;
  bool isMale = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
            'BMI Calculator',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(

          children: [
            /*Row(
              children: [
                Text('الصورتين دول شغل رشااااد ',
                  style:TextStyle(
                    fontSize: 35 ,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),

              ],
            ),*/
            // first row for gender
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Row(
                  children: [

                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false ;
                            colorFemale = Colors.blue;
                            colorMale = Colors.grey ;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  image: AssetImage('images/women.png'),
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorFemale,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true ;
                            colorMale = Colors.blue;
                            colorFemale = Colors.grey;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Container(
                               child: Image(
                                   image:AssetImage('images/man.png'),
                                 width: 100,
                                 height: 100,

                               ),


                             ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorMale,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //second row for slider
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '$height',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),


                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value){

                          setState(() {
                            height=value.round().toDouble();

                          });

                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),

            // third row for age and floating action buttons
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                  heroTag: 'age+',

                                ),
                                SizedBox(width: 25,),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      age--;

                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                  heroTag: 'age-',

                                ),
                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight++;

                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.add),
                                  heroTag: 'weight+',

                                ),
                                SizedBox(width: 25,),
                                FloatingActionButton(
                                  onPressed:(){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: Icon(Icons.remove),
                                  heroTag: 'weight-',

                                ),
                              ],
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              color: Colors.blueAccent,
              width: double.infinity,
              child: MaterialButton(

                  onPressed: (){
                    double result = (weight / pow(height /100 ,2)) ;
                    result.toInt();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:(context)=>ResultScreen(
                              age: age.toInt(),
                              result: result,
                              isMale: isMale ,

                            ),
                        ),
                    );
                  },
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                height: 50,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
