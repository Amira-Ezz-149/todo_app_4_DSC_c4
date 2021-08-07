import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  bool selected = false;
  Widget build(BuildContext context) {
    return ListTile(

      title: Text('go to gym', style: TextStyle( decoration:(selected)? TextDecoration.lineThrough: null ,),),
      leading:CircularCheckBox(
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
        checkColor: Colors.white,
        disabledColor: Colors.yellow,
        focusColor: Colors.red,
        value: this.selected,
        onChanged:(val){
          setState(() {
            this.selected= !this.selected;
          });
        },
      ),


    );
  }
}
