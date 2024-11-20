part of 'gpt_bloc.dart';

abstract class GPTEvent {}

class SendMessageEvent extends GPTEvent {
  final String message;

  SendMessageEvent(this.message);
}