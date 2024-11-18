import 'package:bloc/bloc.dart';

part 'chat_ui_event.dart';
part 'chat_ui_state.dart';

class ChatUiBloc extends Bloc<ChatUiEvent, ChatUiState> {
  ChatUiBloc() : super(ChatUiInitial()) {
    on<ChatUiEvent>((event, emit) {
    });
  }
}
