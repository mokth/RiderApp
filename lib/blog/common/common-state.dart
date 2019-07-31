<<<<<<< HEAD
import 'package:equatable/equatable.dart';


abstract class SearchState extends Equatable {}

class  SearchUninitialized extends  SearchState {
  @override
  String toString() => 'SearchUninitialized';
}

class  SearchError extends  SearchState {
  @override
  String toString() => 'SearchError';
}

class  SearchCompleted extends  SearchState {
  @override
  String toString() => 'SearchCompleted';
}


class SearchData extends  SearchState {
 
  @override
  String toString() => 'SearchData';
}


class  SearchLoading extends  SearchState {
  @override
  String toString() => 'SearchLoading';
=======
import 'package:equatable/equatable.dart';


abstract class SearchState extends Equatable {}

class  SearchUninitialized extends  SearchState {
  @override
  String toString() => 'SearchUninitialized';
}

class  SearchError extends  SearchState {
  @override
  String toString() => 'SearchError';
}

class  SearchCompleted extends  SearchState {
  @override
  String toString() => 'SearchCompleted';
}


class SearchData extends  SearchState {
 
  @override
  String toString() => 'SearchData';
}


class  SearchLoading extends  SearchState {
  @override
  String toString() => 'SearchLoading';
>>>>>>> 8c0d3405608fa3286722f27dcd88b889fd31b8c7
}