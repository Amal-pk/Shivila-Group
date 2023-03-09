import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shivila_group/App/Login/View/login.dart';

class SplashController extends ChangeNotifier {
  @override
  @override
  
  void timer(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) =>const Login(),
        ),
        (route) => false,
      ),
    );
    notifyListeners();
  }
}
