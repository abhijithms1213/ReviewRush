import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reviewrush/features/chat_ui/data/datasources/chat_ui_remote_data_source.dart';
import 'package:reviewrush/features/chat_ui/data/repositories/chat_ui_repository_impl.dart';
import 'package:reviewrush/features/chat_ui/domain/usecases/chat_ui_use_case.dart';
import 'package:reviewrush/features/chat_ui/presentation/bloc/gpt_bloc.dart';
import 'package:reviewrush/features/chat_ui/presentation/widgets/chat_ui_widget.dart';
import 'package:reviewrush/features/chat_ui/presentation/widgets/custom_app_bar.dart';

class WrapperChat extends StatelessWidget {
  const WrapperChat({super.key});

  @override
  Widget build(BuildContext context) {
    final GPTBloc gptBloc = GPTBloc(
      GetChatResponseUseCase(
        GPTRepositoryImpl(
          GPTDataSourceImpl(),
        ),
      ),
    );
    return BlocProvider(
      create: (context) => gptBloc,
      child: const ScreenChat(),
    );
  }
}

class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: const ChatTopBar(),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<GPTBloc, GPTState>(
              builder: (context, state) {
                if (state is GPTInitial) {
                  return const Center(child: Text('Start a conversation'));
                }
                if (state is GPTLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is GPTError) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                if (state is GPTLoaded) {
                  return ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      final message = state.messages[index];
                      return MessageBubble(
                        message: message.text,
                        isUser: message.isUser,
                      );
                    },
                  );
                }

                return const Text("unknown state");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textController,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Type your studied material here...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      final message = textController.text.trim();
                      if (message.isNotEmpty) {
                        context.read<GPTBloc>().add(SendMessageEvent(message));
                        textController.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
