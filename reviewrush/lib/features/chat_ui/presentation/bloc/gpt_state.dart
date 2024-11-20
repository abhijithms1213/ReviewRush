part of 'gpt_bloc.dart';

abstract class GPTState {}

class GPTInitial extends GPTState {}

class GPTLoading extends GPTState {}

class GPTLoaded extends GPTState {
  final List<ChatMessageModel> messages;

  GPTLoaded(this.messages);
}


class GPTError extends GPTState {
  final String message;

  GPTError(this.message);
}
