import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String name;

  UserProvider({this.name = 'Mapp'});

  void changeName({required String newName}) async {
    name = newName;
    notifyListeners();
  }
}
