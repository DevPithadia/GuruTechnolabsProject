// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guru_technolabs/models/students_list.dart';
import 'package:guru_technolabs/screens/student_record.dart';
import 'package:guru_technolabs/storage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Storage().storageList.length,
                itemBuilder: (context, index) {
                  print("done....................................");
                  // print(Storage().storageList);
                  return Info(n: Storage().storageList[index].studentName);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StudentRecord()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final String n;
  const Info({required this.n});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(n),
      ),
    );
  }
}
