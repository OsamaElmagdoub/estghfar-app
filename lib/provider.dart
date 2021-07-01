import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyProvider extends ChangeNotifier{
  int _counter = 0;

  int get counter => _counter;
 void count()
  {

    _counter++;
    notifyListeners();
  }
  void retry(){

    _counter = 0;
    notifyListeners();
  }



}