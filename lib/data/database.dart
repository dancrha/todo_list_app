import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

//reference our box
  final _myBox = Hive.box('mybox');

//run this if this is the first time opening the app
  void createInitialData() {
    toDoList = [
      ["Eat breakfast", false],
      ['Go to the gym', false]
    ];
  }

//load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

//update database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
