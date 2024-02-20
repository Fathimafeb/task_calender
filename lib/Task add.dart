import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_calender/Taklist.dart';
import 'package:task_calender/task_calender.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var task = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Add Task",style: TextStyle(fontSize: 20,color: Colors.white),),
                  SizedBox(height: 20,),
                  Container(height: 60,width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  child: TextFormField(
                    controller: task,
                      decoration: InputDecoration(border: InputBorder.none)),),
                  SizedBox(height: 20,),
                 ElevatedButton(
                     onPressed: () {
                       Add();
                       Navigator.push(context, MaterialPageRoute(builder: (context) {
                         return List();
                       },));

                 }, child: Text('Add')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> Add() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('task', task.text);
  }
}
