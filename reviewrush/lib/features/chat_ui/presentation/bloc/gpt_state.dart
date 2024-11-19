part of 'gpt_bloc.dart';

abstract class GPTState {}

class GPTInitial extends GPTState {}

class GPTLoading extends GPTState {}

class GPTLoaded extends GPTState {
  final String response;

  GPTLoaded(this.response);
}

class GPTError extends GPTState {
  final String message;

  GPTError(this.message);
}
