import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myflutterject/main.dart';
import 'package:myflutterject/model/person.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.police;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("เเบบฟอร์มบันทึกข้อมูล"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                        label: Text(
                      "ชื่อ",
                      style: TextStyle(fontSize: 20),
                    )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "กรุณาป้อนชื่อของคุณ";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text(
                      "อายุ",
                      style: TextStyle(fontSize: 20),
                    )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "กรุณาป้อนอายุของคุณ";
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _age = int.parse(value.toString());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                      value: _job,
                      decoration: const InputDecoration(
                          label: Text(
                        "อาชีพ",
                        style: TextStyle(fontSize: 20),
                      )),
                      items: Job.values.map((key) {
                        return DropdownMenuItem(
                            value: key, child: Text(key.title));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _job = value!;
                        });
                      }),
                  FilledButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                        _formKey.currentState!.save();
                        databass.add(Person(name: _name, age: _age, job: _job));
                        _formKey.currentState!.reset();
                        Navigator.pushReplacement(context,MaterialPageRoute(
                          builder: (ctx) => const MyApp())
                        );
                      },
                      style:
                          FilledButton.styleFrom(backgroundColor: Colors.blue),
                      child: const Text(
                        "บันทึกข้อมูล",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
