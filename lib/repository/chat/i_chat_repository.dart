import 'package:test_assignment_chat/repository/chat/chat.dart';

abstract class IChatRepository {

  Future<void> addChat(Chat chat);

  Future<void> updateChat(Chat chat);

  Future<Chat?> getChatById(String id);

  Future<List<Chat>> getChatsForUser(String userId);

  Future<List<Chat>> getAllChats();

  Future<void> deleteChat(Chat chat);

  Future<void> addUserToChat({
    required String chatId, 
    required String userId
  });

  Future<void> removeUserFromChat({
    required String chatId,
    required String userId
  });

}