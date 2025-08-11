import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem({
    super.key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),

        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 20,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),

        trailing: Container(
          padding: EdgeInsets.all(0),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,

            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),

            onPressed: () {
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
