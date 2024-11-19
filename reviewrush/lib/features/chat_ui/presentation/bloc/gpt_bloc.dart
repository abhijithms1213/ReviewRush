import 'package:bloc/bloc.dart';
import 'package:reviewrush/features/chat_ui/data/models/chat_message.dart';
import 'package:reviewrush/features/chat_ui/domain/usecases/chat_ui_use_case.dart';

part 'gpt_event.dart';
part 'gpt_state.dart';

class GPTBloc extends Bloc<GPTEvent, GPTState> {
  final GetChatResponseUseCase useCase;

  GPTBloc(this.useCase) : super(GPTInitial()) {
    on<SendMessageEvent>((event, emit) async {
      emit(GPTLoading());
      try {
        final messages = [
          GPTChatModel(role: 'user', content: event.userMessage),
        ];
        final response = await useCase.execute(messages);
        emit(GPTLoaded(response));
      } catch (e) {
        emit(GPTError(e.toString()));
      }
    });
  }
}
