import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool tema_noturno = false;
  changeThene() {
    tema_noturno = !tema_noturno;
    notifyListeners();
  }
}
