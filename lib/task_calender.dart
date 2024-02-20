import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_calender/Taklist.dart';
import 'package:task_calender/Task%20add.dart';

class Taskcalender extends StatefulWidget {
  const Taskcalender({super.key});

  @override
  State<Taskcalender> createState() => _TaskcalenderState();
}

class _TaskcalenderState extends State<Taskcalender> {

  get floatingActionButton => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 150),
        child: FloatingActionButton.extended(
          shape: CircleBorder(),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Add();
            },));
          },
          label: Icon(Icons.add, color: Colors.white, size: 30),
          backgroundColor: Colors.blue,),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text("Feb 2024", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('M', style: TextStyle(color: Colors.white),),
              Text('T', style: TextStyle(color: Colors.white),),
              Text('w', style: TextStyle(color: Colors.white),),
              Text('T', style: TextStyle(color: Colors.white),),
              Text('F', style: TextStyle(color: Colors.white),),
              Text('S', style: TextStyle(color: Colors.white),),
              Text('S', style: TextStyle(color: Colors.white),),
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('1', style: TextStyle(color: Colors.white),),
              Text('2', style: TextStyle(color: Colors.white),),
              Text('3', style: TextStyle(color: Colors.white),),
              Text('4', style: TextStyle(color: Colors.white),),
              Text('5', style: TextStyle(color: Colors.white),),
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: Center(child: Text(
                    '6', style: TextStyle(color: Colors.white),))),
              Text('7', style: TextStyle(color: Colors.white),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30),
            child: Text("Tuesday,6 February",
              style: TextStyle(color: Colors.white, fontSize: 20),),
          ),





        ],
      ),
    );
  }


}





