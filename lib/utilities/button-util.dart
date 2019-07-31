<<<<<<< HEAD
import 'package:flutter/material.dart';
import '../utilities/textstyle-util.dart';

class ButtonUtil {
  static RaisedButton getRaiseButton(action, caption, btnColor) {
    return RaisedButton(
      color: btnColor, //Color(0xff5DADE2),
      onPressed: action,
      child: Text(
        caption,
        style: TextStyleUtil.getButtonTextStyle(),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import '../utilities/textstyle-util.dart';

class ButtonUtil {
  static RaisedButton getRaiseButton(action, caption, btnColor) {
    return RaisedButton(
      color: btnColor, //Color(0xff5DADE2),
      onPressed: action,
      child: Text(
        caption,
        style: TextStyleUtil.getButtonTextStyle(),
      ),
    );
  }
}
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
