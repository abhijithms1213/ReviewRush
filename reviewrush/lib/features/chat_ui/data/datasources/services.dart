import 'package:hive_flutter/adapters.dart';
import 'package:reviewrush/features/chat_ui/data/models/cht_model.dart';

class ChatServices {
  Box<ChatMessageModel>? _msgmodel;

  Future<void> openBox() async {
    _msgmodel = await Hive.openBox<ChatMessageModel>('chats');
  }

  Future<void> closeBox() async {
    await _msgmodel?.close();
  }

  Future<void> addChat(ChatMessageModel chatMessageModel) async {
    if (_msgmodel == null) {
      await openBox();
    }
    await _msgmodel?.add(chatMessageModel);
  }

  Future<List<ChatMessageModel>> getAllchat() async {
    if (_msgmodel == null) {
      await openBox();
    }
    return _msgmodel!.values.toList();
  }

  Future<void> updateChat(int index, ChatMessageModel chatMessageModel) async {
    if (_msgmodel == null) {
      await openBox();
    }
    await _msgmodel!.putAt(index, chatMessageModel);
  }

  Future<void> deleteChat(int index) async {
    if (_msgmodel == null) {
      await openBox();
    }
    await _msgmodel!.deleteAt(index);
  }
}
