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
      GetChatResponseUseCase(GPTRepositoryImpl(GPTDataSourceImpl())),
    );
    return BlocProvider(
      create: (context) => gptBloc,
      child: const ScreenChat(),
    );
  }
}

class ScreenChat extends StatefulWidget {
  const ScreenChat({super.key});

  @override
  State<ScreenChat> createState() => _ScreenChatState();
}

class _ScreenChatState extends State<ScreenChat> {
  final TextEditingController _textController = TextEditingController();
  // final List<ChatMessage> _messages = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    controller: _scrollController,
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
          // Bottom field for writing text with only a send button
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border(
                    top: BorderSide(color: Colors.grey[300]!),
                  ),
                  borderRadius: BorderRadius.circular(30)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textController,
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
                    // onPressed: _handleSubmitted,
                    onPressed: () {
                      GPTBloc gptBloc = context.read<GPTBloc>();
                      gptBloc.add(
                        SendMessageEvent(
                          _textController.text,
                        ),
                      );
                      _textController.clear();
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
