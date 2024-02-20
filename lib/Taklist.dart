import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  var task = '';

  void initState() {
    getSaveData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:

       ListView.builder(
         itemCount: 1,
         itemBuilder: (context, index) {

           return
           Padding(
             padding: const EdgeInsets.all(20),
             child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),
              child: ListTile(

                leading: Text(task,style: TextStyle(color: Colors.white),),

                trailing:
                    IconButton(onPressed: () {
                      delete();

                    }, icon: Icon(Icons.delete),color: Colors.white,),


              ),


             ),
           );


         }

       )
    );
  }

  getSaveData() async {
    final prefs = await SharedPreferences.getInstance();
    task = prefs.getString('task')!;
    setState(() {

    });
  }
  delete() async{
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('task');
    task = '';
    setState(() {

    });
  }
}
