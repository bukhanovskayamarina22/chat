
import 'package:test_assignment_chat/repository/message/message.dart';

abstract class IMessageRepository {
  Future<Message> addMessage(String chatId, String message, String? imageURL);

  Future<void> updateMessage(Message message);

  Future<List<Message>> getMessagesForChat(String chatId);

  Future<Message?> getLastMessageInChat(String chatId);

  Future<Message?> getMessageById(String id);

  Future<void> deleteMessage(Message message);
}