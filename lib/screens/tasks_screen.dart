import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_4_dsc_c4/widgets/todo_items.dart';
class TasksScreen extends StatelessWidget {
  const TasksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:20.0, left: 10.0, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.menu, color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: Text('Tasks',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
                itemCount:4,
                itemBuilder:  (context , index){
              return TodoItem();
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
