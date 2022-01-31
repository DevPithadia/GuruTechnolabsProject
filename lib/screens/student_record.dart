// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guru_technolabs/models/students_list.dart';
import 'package:guru_technolabs/storage.dart';
import 'package:provider/provider.dart';

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
  var n1;
  var n2;
  var n3;
  var n4;
  var total;
  var percent;
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
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          n1 = int.parse(m1.text);
                          n2 = int.parse(m2.text);
                          n3 = int.parse(m3.text);
                          n4 = int.parse(m4.text);
                          total = n1 + n2 + n3 + n4;
                          percent = total / 4;
                        });
                      },
                      child: Text('Calculate'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total: $total',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Percentage: $percent',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )
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
                        StudentsList obj = StudentsList(name.text, m1.text,
                            m2.text, m3.text, m4.text, percent.toString());
                        // Storage().addStud(obj);
                        Provider.of<Storage>(context, listen: false)
                            .addStud(obj);
                        Navigator.pop(context);
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
