import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final _myBox = Hive.box('mybox');

  void creatInitialData() {
    toDoList = [
      ["Create App", false],
      ["Do Exercise", false],
    ];
  }

  void loadData()
  {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase()
  {
    _myBox.put("TODOLIST",toDoList);
  }
}
