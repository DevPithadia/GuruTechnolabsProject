import 'package:flutter/cupertino.dart';
import 'package:guru_technolabs/models/students_list.dart';

class Storage with ChangeNotifier {
  List<StudentsList> _storageList = [];
  int get count => _storageList.length;
  List<StudentsList> get storageList => _storageList;

  void addStud(StudentsList a) {
    _storageList.add(a);
    notifyListeners();
  }

  void deleteStud(int index) {
    _storageList.removeAt(index);
    notifyListeners();
  }
}
