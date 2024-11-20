import 'package:bloc/bloc.dart';
import 'package:reviewrush/features/chat_ui/data/models/cht_model.dart';
import 'package:reviewrush/features/chat_ui/domain/usecases/chat_ui_use_case.dart';

part 'gpt_event.dart';
part 'gpt_state.dart';

class GPTBloc extends Bloc<GPTEvent, GPTState> {
  final GetChatResponseUseCase getChatResponse;

  GPTBloc(this.getChatResponse) : super(GPTInitial()) {
    on<SendMessageEvent>((event, emit) async {
      final currentState = state;
      List<ChatMessageModel> conversationContext = [];

      if (currentState is GPTLoaded) {
        // Use existing messages as context
        conversationContext = currentState.messages;
      }

      emit(GPTLoading());
      try {
        // Add the new user message to the context
        final updatedMessages = List<ChatMessageModel>.from(conversationContext)
          ..add(ChatMessageModel(text: event.message, isUser: true));

        // Pass the entire context to the getChatResponse use case
        final response = await getChatResponse(
            updatedMessages.map((msg) => msg.text).join('\n'));

        // Add the bot's response to the updated message list
        updatedMessages.add(ChatMessageModel(text: response, isUser: false));

        // Emit the new state with the updated messages
        emit(GPTLoaded(updatedMessages));
      } catch (e) {
        emit(GPTError('Failed to fetch response: $e'));
      }
    });
  }
}
