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
      if (currentState is GPTLoaded) {
        emit(GPTLoading());
        try {
          final response = await getChatResponse(event.message);
          final newMessage = ChatMessageModel(
            text: response,
            isUser: false,
          );
          final updatedMessages = List<ChatMessageModel>.from(
              currentState.messages)
            ..add(ChatMessageModel(text: event.message, isUser: true))
            ..add(newMessage);
          emit(GPTLoaded(updatedMessages));
        } catch (e) {
          emit(GPTError('Failed to fetch response: $e'));
        }
      } else {
        emit(GPTLoading());
        try {
          final response = await getChatResponse(event.message);
          emit(
            GPTLoaded([
              ChatMessageModel(text: event.message, isUser: true),
              ChatMessageModel(text: response, isUser: false),
            ]),
          );
        } catch (e) {
          emit(GPTError('Failed to fetch response: $e'));
        }
      }
    });
  }
}
