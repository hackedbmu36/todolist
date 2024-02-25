import 'package:flutter/material.dart';

import '../model/todo.dart';
import '../constants/colors.dart';

const Color tdRed = Color(0xFFDA4040);
const Color tdBlue = Color(0xFF5F52EE);
const Color tdPurple = Color(0xFF5F52EE);

const Color tdBlack = Color.fromARGB(255, 0, 0, 0);
const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color.fromARGB(255, 0, 0, 0);
const Color tdBoxColor = Color.fromARGB(255, 52, 49, 53);
const Color tdtextColor = Color.fromARGB(255,252,251,246);
const Color tdtickColor = Color.fromARGB(255, 167, 142, 230)
;
class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          // print('Clicked on Todo Item.');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: tdBlack,
        
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdtickColor,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 20,
            // fontFamily: ,
            fontWeight: FontWeight.w500,
            color: tdtextColor,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            decorationColor: todo.isDone ? tdtextColor : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
    
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            color: tdRed,
            iconSize: 25,
            icon: Icon(Icons.delete),
            onPressed: () {
              // print('Clicked on delete icon');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}