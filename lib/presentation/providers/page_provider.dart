import 'package:flutter/material.dart';

class PageProvider extends ChangeNotifier {
  //Page List
  List<String> pageList = [
    'Home Screen', // 0
    'Competition Information', // 1
    'Modul', // 2
    'Baris dan Deret', // 3
    'Question Bank', // 4
    'Video', //5
    'Certificate', //6
    'Ranking', //7
    'Discussion', //8
    'Discussion Feedback', //9
    'Explore', //10
    'Search', //11
    'Profile', //12
  ];

  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  void changeIndex(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }
}
