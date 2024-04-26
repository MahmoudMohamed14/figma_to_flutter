import 'package:figma_to_flutter/models/subjectModel.dart';
import 'package:figma_to_flutter/models/teacherModel.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  List<SubjectModel>subjectModels=[
    SubjectModel('assets/english.png','English'),
    SubjectModel('assets/biology.png','Biology'),
    SubjectModel('assets/math.png','Math'),
    SubjectModel('assets/france.png','France'),
    SubjectModel('assets/history.png','History'),
    SubjectModel('assets/geography.png','Geography'),
    SubjectModel('assets/chemistry.png','Chemistry'),
    SubjectModel('assets/biology.png','Biology'),
  ];
  List<TeacherModel>teacherModels=[
    TeacherModel('assets/tmath.png','MR. Mohamed Ali','4,500 EGP','Math subject'),
    TeacherModel('assets/tmath.png','MR. Ahmed Ali','4,500 EGP','English subject'),
    TeacherModel('assets/tmath.png','MR. Ahmed Ali','4,500 EGP','English subject'),
    TeacherModel('assets/tmath.png','MR. Ahmed Ali','4,500 EGP','English subject'),
    TeacherModel('assets/tmath.png','MR. Ahmed Ali','4,500 EGP','English subject'),
    TeacherModel('assets/tmath.png','MR. Ahmed Ali','4,500 EGP','English subject'),

  ];
  void selectSubject(index){
    subjectModels[index].isSelected=!subjectModels[index].isSelected;
    notifyListeners();
  }
  void selectTeacher(index){
    teacherModels[index].isSelected=!teacherModels[index].isSelected;
    notifyListeners();
  }

}