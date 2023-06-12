import 'dart:io';

class ApiState<T> {
  T? data;
  String? error;
  bool isError;

  ApiState({this.data, this.error, this.isError = false});

  factory ApiState.error(dynamic message, {T? data}) => ApiState(error: message, data: data, isError: true);
  factory ApiState.complete(T? data) => ApiState(data: data);
}