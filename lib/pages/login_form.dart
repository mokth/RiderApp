<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../base/customroute.dart';
import '../blog/login/loginbloc.dart';
import '../blog/login/login_event.dart';
import '../blog/login/login_state.dart';

import 'Settings/setting.dart';

class LoginForm extends StatefulWidget {
  final LoginBloc loginBloc;
  //final AuthenticationBloc authenticationBloc;

  LoginForm({
    Key key,
    @required this.loginBloc,
    //@required this.authenticationBloc,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  LoginBloc get _loginBloc => widget.loginBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginEvent, LoginState>(
      bloc: _loginBloc,
      builder: (
        BuildContext context,
        LoginState state,
      ) {
        if (state is LoginFailure) {
          _onWidgetDidBuild(() {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('${state.error}'),
                backgroundColor: Colors.red,
              ),
            );
          });
        }

        return Form(
          child: Container(
            // height: 250.00,
            // width: 230.00,
            //height: MediaQuery.of(context).size.height,
            //width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.fromLTRB(40, 20, 30, 40),
            padding: EdgeInsets.all(20.0),
            //color: Color(0xffEAFAF1),
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        //color: Colors.deepOrangeAccent,
                        transform: Matrix4.translationValues(-10.0, -10.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColorLight,
                          child: Icon(
                            Icons.motorcycle,
                            size:40.0,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'User ID',
                            filled: true,
                            fillColor: Colors.white),
                        controller: _usernameController,
                      ),
                      Divider(),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white),
                        controller: _passwordController,
                        obscureText: true,
                      ),
                      Divider(),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: <Widget>[
                      //     GestureDetector(
                      //       onTap:() {
                      //         Navigator.push(
                      //           context,
                      //           new CustomRoute(
                      //               builder: (context) =>
                      //                   new SettingPage(null)),
                      //         );
                      //       },
                      //       child: Text("Settings", style: TextStyle(
                      //             color: Colors.blueAccent,
                      //             fontSize: 16.0,
                      //             fontWeight: FontWeight.w700)),                             
                      //     ),
                          
                      //   ],
                      // ),
                      Divider(
                      ),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        color: Colors.pinkAccent,
                      
                        onPressed: state is! LoginLoading
                            ? _onLoginButtonPressed
                            : null,
                        child: Text(
                          'Please Sign In',                          
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: state is LoginLoading
                            ? CircularProgressIndicator()
                            : null,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  _onLoginButtonPressed() {
    _loginBloc.dispatch(LoginButtonPressed(
      username: _usernameController.text,
      password: _passwordController.text,
    ));
  }
}
=======
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../base/customroute.dart';
import '../blog/login/loginbloc.dart';
import '../blog/login/login_event.dart';
import '../blog/login/login_state.dart';

import 'Settings/setting.dart';

class LoginForm extends StatefulWidget {
  final LoginBloc loginBloc;
  //final AuthenticationBloc authenticationBloc;

  LoginForm({
    Key key,
    @required this.loginBloc,
    //@required this.authenticationBloc,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  LoginBloc get _loginBloc => widget.loginBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginEvent, LoginState>(
      bloc: _loginBloc,
      builder: (
        BuildContext context,
        LoginState state,
      ) {
        if (state is LoginFailure) {
          _onWidgetDidBuild(() {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text('${state.error}'),
                backgroundColor: Colors.red,
              ),
            );
          });
        }

        return Form(
          child: Container(
            // height: 250.00,
            // width: 230.00,
            //height: MediaQuery.of(context).size.height,
            //width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.fromLTRB(40, 20, 30, 40),
            padding: EdgeInsets.all(20.0),
            //color: Color(0xffEAFAF1),
            child: SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 60,
                        //color: Colors.deepOrangeAccent,
                        transform: Matrix4.translationValues(-10.0, -10.0, 0.0),
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColorLight,
                          child: Icon(
                            Icons.motorcycle,
                            size:40.0,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'User ID',
                            filled: true,
                            fillColor: Colors.white),
                        controller: _usernameController,
                      ),
                      Divider(),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            filled: true,
                            fillColor: Colors.white),
                        controller: _passwordController,
                        obscureText: true,
                      ),
                      Divider(),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.end,
                      //   children: <Widget>[
                      //     GestureDetector(
                      //       onTap:() {
                      //         Navigator.push(
                      //           context,
                      //           new CustomRoute(
                      //               builder: (context) =>
                      //                   new SettingPage(null)),
                      //         );
                      //       },
                      //       child: Text("Settings", style: TextStyle(
                      //             color: Colors.blueAccent,
                      //             fontSize: 16.0,
                      //             fontWeight: FontWeight.w700)),                             
                      //     ),
                          
                      //   ],
                      // ),
                      Divider(
                      ),
                      RaisedButton(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        color: Colors.pinkAccent,
                      
                        onPressed: state is! LoginLoading
                            ? _onLoginButtonPressed
                            : null,
                        child: Text(
                          'Please Sign In',                          
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: state is LoginLoading
                            ? CircularProgressIndicator()
                            : null,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onWidgetDidBuild(Function callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  _onLoginButtonPressed() {
    _loginBloc.dispatch(LoginButtonPressed(
      username: _usernameController.text,
      password: _passwordController.text,
    ));
  }
}
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
