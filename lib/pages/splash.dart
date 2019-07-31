<<<<<<< HEAD
import 'package:flutter/material.dart';

import '../blog/auth/authbloc.dart';
import '../blog/auth/authevent.dart';
import '../pages/showup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  //final AuthenticationBloc bloc;
  SplashPage();//this.bloc);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  AuthenticationBloc bloc; 
  @override
  void initState() {
    super.initState();
    //get bloc from Parent
    bloc = BlocProvider.of<AuthenticationBloc>(context); 
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        bloc.dispatch(CheckAuth());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              ShowUp(
                child: Center(
                  child: Icon(Icons.motorcycle,size:200.0,
                  color: Theme.of(context).primaryColorLight,),
                ),
                delay: 500,
              ),
                ShowUp(
                child:
                Container(
                  margin: EdgeInsets.only(top:140.0),
                 child:              
                 Center(
                  child: Text(
                    "Rider Application",
                    style:
                        TextStyle(fontSize: 20.0,
                          color: Theme.of(context).primaryColor,
                         fontWeight: FontWeight.w700),
                  ),
                ),),
                delay: 1000,
              ),
            ],
          )),
    );
  }
}
=======
import 'package:flutter/material.dart';

import '../blog/auth/authbloc.dart';
import '../blog/auth/authevent.dart';
import '../pages/showup.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  //final AuthenticationBloc bloc;
  SplashPage();//this.bloc);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  AuthenticationBloc bloc; 
  @override
  void initState() {
    super.initState();
    //get bloc from Parent
    bloc = BlocProvider.of<AuthenticationBloc>(context); 
    controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        bloc.dispatch(CheckAuth());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              ShowUp(
                child: Center(
                  child: Icon(Icons.motorcycle,size:200.0,
                  color: Theme.of(context).primaryColorLight,),
                ),
                delay: 500,
              ),
                ShowUp(
                child:
                Container(
                  margin: EdgeInsets.only(top:140.0),
                 child:              
                 Center(
                  child: Text(
                    "Rider Application",
                    style:
                        TextStyle(fontSize: 20.0,
                          color: Theme.of(context).primaryColor,
                         fontWeight: FontWeight.w700),
                  ),
                ),),
                delay: 1000,
              ),
            ],
          )),
    );
  }
}
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
