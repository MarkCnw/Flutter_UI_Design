import 'package:flutter/material.dart';

enum Job {
  doctor(title: "หมอ", image: "assets/images/pic2.png",color: Colors.green),
  teacher(title: "ครู", image: "assets/images/pic6.png",color: Colors.purple),
  nurse(title: "พยาบาล", image: "assets/images/pic3.png",color: Colors.pink),
  police(title: "ตำรวจ", image: "assets/images/pic4.png",color: Colors.blue);

  const Job({required this.title, required this.image,required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  Job job;
}

List<Person> databass = [
  Person(name: "ก้อง", age: 30, job: Job.doctor),
  Person(name: "โจโจ้", age: 25, job: Job.teacher),
];
