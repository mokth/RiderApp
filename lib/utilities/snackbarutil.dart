<<<<<<< HEAD

import 'package:flutter/material.dart';

class SnackBarUtil {
  
  static showSnackBar(String msg,scaffoldKey) {
    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.red,
      ),
    );
  }
=======

import 'package:flutter/material.dart';

class SnackBarUtil {
  
  static showSnackBar(String msg,scaffoldKey) {
    scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.red,
      ),
    );
  }
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
}