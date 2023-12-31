import 'package:appthon/slide.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class Preuni extends StatefulWidget {
  const Preuni({super.key});

  @override
  State<Preuni> createState() => _PreuniState();
}

class _PreuniState extends State<Preuni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,colors: [Colors.pinkAccent,Colors.deepPurple])
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text("Academic Progress",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Text("Primary",style: TextStyle(fontSize: 30,color: Colors.white)),
                  LinearPercentIndicator(
                    animationDuration: 1200,
                    percent: 0.1,
                    animation: true,
                    width: 200,
                    lineHeight: 20.0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.pinkAccent,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Text("6-10",style: TextStyle(fontSize: 30,color: Colors.white),),
                  LinearPercentIndicator(
                        animationDuration: 1400,
                        percent: 0.3,
                        animation: true,
                        width: 200,
                        lineHeight: 20.0,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.pinkAccent
                    ,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                children: [
                  Text("+1,+2",style: TextStyle(fontSize: 30,color: Colors.white),),
                  LinearPercentIndicator(

                    animationDuration: 1600,
                    percent: 0.5,
                    animation: true,
                    width: 200,
                    lineHeight: 20.0,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.pinkAccent,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>hscrn()));
              },alignment: Alignment.topRight, icon: Icon(Icons.arrow_right_alt_outlined,size:60,color: Colors.white,)),
            ],
          ),
        ),
      )
    );
  }
}
