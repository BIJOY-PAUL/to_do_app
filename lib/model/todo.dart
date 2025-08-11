import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({required this.id, required this.todoText, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", todoText: "Morning Excercize", isDone: true),

      ToDo(id: "02", todoText: "payer", isDone: true),

      ToDo(id: "03", todoText: "app development ", isDone: false),

      ToDo(id: "04", todoText: "Tution", isDone: false),
    ];
  }
}
