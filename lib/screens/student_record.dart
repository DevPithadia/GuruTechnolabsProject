// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guru_technolabs/models/students_list.dart';
import 'package:guru_technolabs/storage.dart';

class StudentRecord extends StatefulWidget {
  const StudentRecord({Key? key}) : super(key: key);

  @override
  _StudentRecordState createState() => _StudentRecordState();
}

class _StudentRecordState extends State<StudentRecord> {
  TextEditingController name = TextEditingController();
  TextEditingController m1 = TextEditingController();
  TextEditingController m2 = TextEditingController();
  TextEditingController m3 = TextEditingController();
  TextEditingController m4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Record'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    hintText: "Enter Student Name",
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Marks',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Subject 1',
                          textAlign: TextAlign.left,
                          // style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Flexible(
                          child: TextField(
                            controller: m1,
                            decoration: InputDecoration(hintText: "Marks"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Subject 2',
                          textAlign: TextAlign.left,
                          // style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Flexible(
                          child: TextField(
                            controller: m2,
                            decoration: InputDecoration(hintText: "Marks"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Subject 3',
                          textAlign: TextAlign.left,
                          // style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Flexible(
                          child: TextField(
                            controller: m3,
                            decoration: InputDecoration(hintText: "Marks"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Subject 4',
                          textAlign: TextAlign.left,
                          // style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        Flexible(
                          child: TextField(
                            controller: m4,
                            decoration: InputDecoration(hintText: "Marks"),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        StudentsList obj = StudentsList(
                            name.text, m1.text, m2.text, m3.text, m4.text);
                        Storage().addStud(obj);
                        Navigator.of(context).pop();
                      },
                      child: Text('Submit'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
