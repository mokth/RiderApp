<<<<<<< HEAD
import 'package:equatable/equatable.dart';

// uninitialized   — waiting to see if the user is authenticated or not on app start.
// loading         — waiting to persist/delete a token
// authenticated   — successfully authenticated
// unauthenticated — not authenticated

abstract class AuthenticationState extends Equatable {}

class AuthenticationUninitialized extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUninitialized';
}

class AuthenticationNoSetting extends AuthenticationState {
  @override
  String toString() => 'AuthenticationNoSetting';
}

class AuthenticationAuthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationAuthenticated';
}

class AuthenticationUnauthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUnauthenticated';
}

class AuthenticationLoading extends AuthenticationState {
  @override
  String toString() => 'AuthenticationLoading';
}
=======
import 'package:equatable/equatable.dart';

// uninitialized   — waiting to see if the user is authenticated or not on app start.
// loading         — waiting to persist/delete a token
// authenticated   — successfully authenticated
// unauthenticated — not authenticated

abstract class AuthenticationState extends Equatable {}

class AuthenticationUninitialized extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUninitialized';
}

class AuthenticationNoSetting extends AuthenticationState {
  @override
  String toString() => 'AuthenticationNoSetting';
}

class AuthenticationAuthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationAuthenticated';
}

class AuthenticationUnauthenticated extends AuthenticationState {
  @override
  String toString() => 'AuthenticationUnauthenticated';
}

class AuthenticationLoading extends AuthenticationState {
  @override
  String toString() => 'AuthenticationLoading';
}
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
