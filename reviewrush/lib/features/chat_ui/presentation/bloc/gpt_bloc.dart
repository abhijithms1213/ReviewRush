import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:reviewrush/features/chat_ui/data/datasources/services.dart';
import 'package:reviewrush/features/chat_ui/data/models/cht_model.dart';
import 'package:reviewrush/features/chat_ui/domain/usecases/chat_ui_use_case.dart';

part 'gpt_event.dart';
part 'gpt_state.dart';

class GPTBloc extends Bloc<GPTEvent, GPTState> {
  final GetChatResponseUseCase getChatResponse;
  final ChatServices chatServices = ChatServices();

  GPTBloc(
    this.getChatResponse,
  ) : super(GPTInitial()) {
    on<SendMessageEvent>((event, emit) async {
      List<ChatMessageModel> conversationContext = [];

      if (state is GPTLoaded) {
        conversationContext = (state as GPTLoaded).messages;
      }

      emit(GPTLoading());
      try {
        final updatedMessages = List<ChatMessageModel>.from(conversationContext)
          ..add(ChatMessageModel(text: event.message, isUser: true));

        final response = await getChatResponse(
            updatedMessages.map((msg) => msg.text).join('\n'));
        updatedMessages.add(ChatMessageModel(text: response, isUser: false));

        // Save to local Hive box
        // for (var msg in updatedMessages) {
        //   await chatServices.addChat(msg);
        // }

        emit(GPTLoaded(updatedMessages));
      } catch (e) {
        log(e.toString());
        emit(GPTError('Failed to fetch response: $e'));
      }
    });
  }
}
