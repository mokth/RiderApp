<<<<<<< HEAD

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class  SearchEvent extends Equatable {
   SearchEvent([List props = const []]) : super(props);
}

class SearchInitEvent extends  SearchEvent {
  @override
  String toString() => 'SearchInit';
}

class SearchingEvent extends  SearchEvent {
  final String token;

  SearchingEvent({@required this.token}) : super([token]);

  @override
  String toString() => 'Searching { token: $token }';
}

class SearchDoneEvent extends  SearchEvent {
  @override
  String toString() => 'SeachDone';
}

class SearchDataEvent extends  SearchEvent {
  
  @override
  String toString() => 'SearchData';
}

class SeachErrorEvent extends  SearchEvent {
  @override
  String toString() => 'SeachError';
}
=======

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class  SearchEvent extends Equatable {
   SearchEvent([List props = const []]) : super(props);
}

class SearchInitEvent extends  SearchEvent {
  @override
  String toString() => 'SearchInit';
}

class SearchingEvent extends  SearchEvent {
  final String token;

  SearchingEvent({@required this.token}) : super([token]);

  @override
  String toString() => 'Searching { token: $token }';
}

class SearchDoneEvent extends  SearchEvent {
  @override
  String toString() => 'SeachDone';
}

class SearchDataEvent extends  SearchEvent {
  
  @override
  String toString() => 'SearchData';
}

class SeachErrorEvent extends  SearchEvent {
  @override
  String toString() => 'SeachError';
}
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
