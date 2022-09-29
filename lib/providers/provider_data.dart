import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier{
  String userInput1='';
  String userInput2='';
  String oparetor='';
  double answer=0;
  bool operatorClicked = false;

  addToInput1(String txt){
    userInput1 += txt;
    notifyListeners();
  }
  addToInput2(String txt){
    userInput2 += txt;
    notifyListeners();
  }
  operatorIs(String txt){
    oparetor = txt;
    notifyListeners();
  }
  equalPressed(){
    if (oparetor == '') {

    } else if (oparetor == '+') {
      answer = double.parse(userInput1) +
          double.parse(userInput2);
      notifyListeners();
    } else  if (oparetor == 'x') {
      answer = double.parse(userInput1) *
          double.parse(userInput2);
      notifyListeners();

    } else if (oparetor == '/') {
      answer = double.parse(userInput1) /
          double.parse(userInput2);
      notifyListeners();

    } else {
      answer = double.parse(userInput1) -
          double.parse(userInput2);
      notifyListeners();
    }
  }
  delete(){
    userInput1 = '';
    userInput2 = '';
    oparetor = '';
    answer = 0;
    operatorClicked = false;
    notifyListeners();
  }
  isOperatorClicked(){
    operatorClicked =true;
    notifyListeners();
  }
}