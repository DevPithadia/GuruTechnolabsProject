import 'package:flutter/cupertino.dart';
import 'package:guru_technolabs/models/students_list.dart';

class Storage {
  List<StudentsList> _storageList = [];
  List<StudentsList> get storageList => _storageList;

  void addStud(StudentsList a) {
    _storageList.add(a);
    print(storageList);
  }
}
