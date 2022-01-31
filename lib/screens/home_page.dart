// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:guru_technolabs/models/students_list.dart';
import 'package:guru_technolabs/screens/student_record.dart';
import 'package:guru_technolabs/storage.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Storage storage = Provider.of<Storage>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Student App'),
      ),
      body: ListView.builder(
        itemCount: storage.storageList.length,
        itemBuilder: (BuildContext context, int index) {
          return Info(
            studentsList: storage.storageList[index],
            index: index,
          );
        },
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
  final StudentsList studentsList;
  final int index;
  const Info({required this.studentsList, required this.index});

  @override
  Widget build(BuildContext context) {
    Storage storage = Provider.of<Storage>(context, listen: false);
    return Card(
      child: ListTile(
        title: Text(
            '${studentsList.studentName}                                       ${studentsList.percentage}%'),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            storage.deleteStud(index);
          },
        ),
      ),
    );
  }
}
