<<<<<<< HEAD
import 'package:flutter/material.dart';

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
   // if (settings.isInitialRoute)
    //  return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    
    return new FadeTransition(opacity: animation, child: child);
    //return new RotationTransition( turns: animation, alignment: Alignment.center, child: child);
    
  }
=======
import 'package:flutter/material.dart';

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
   // if (settings.isInitialRoute)
    //  return child;
    // Fades between routes. (If you don't want any animation,
    // just return child.)
    
    return new FadeTransition(opacity: animation, child: child);
    //return new RotationTransition( turns: animation, alignment: Alignment.center, child: child);
    
  }
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
}