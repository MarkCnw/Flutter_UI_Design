import 'package:flutter/material.dart';
import 'package:todolist/util.dart/todo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controllers = TextEditingController();

  List toDoList = [
    ['กินท่อม', false],
    ['ซอยจุ๊', false],
    ['Promtบิด', false],
  ];

  void checkboxchanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_controllers.text, false]);
      _controllers.clear();
    });
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf39376),
      appBar: AppBar(
        title: const Text('ตารางผจญภัยวันนี้'),
        centerTitle: true,
        backgroundColor: Color(0xFF2980B9),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return TodoList(
            tasksName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkboxchanged(index),
            deleteFunction: (contex) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _controllers,
                decoration: InputDecoration(
                    hintText: 'ใส่มันมาเลยที่รัก อิอิ',
                    filled: true,
                    fillColor: Colors.deepPurple.shade200,
                    enabledBorder:
                        OutlineInputBorder(borderSide: const BorderSide(color: Colors.deepPurple), borderRadius: BorderRadius.circular(15)),
                    focusedBorder:
                        OutlineInputBorder(borderSide: const BorderSide(color: Colors.deepPurple), borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: saveNewTask,
            backgroundColor: Colors.redAccent, // เปลี่ยนสีเป็นแดงเข้ม
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
