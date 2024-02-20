import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_assignment_chat/repository/chat/chat.dart';
import 'package:test_assignment_chat/repository/chat/i_chat_repository.dart';

class FirebaseChatRepository implements IChatRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _name = 'chats';

  @override
  Future<void> addChat(Chat chat) async {
    await _firestore.collection(_name).doc(chat.id).set({
      'usersId': chat.usersId,
    });
  }

  @override
  Future<void> updateChat(Chat chat) async {
    await _firestore.collection(_name).doc(chat.id).update({
      'usersId': chat.usersId,
    });
  }

  @override
  Future<Chat?> getChatById(String id) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(_name).doc(id).get();

    if (documentSnapshot.exists) {
      final Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;
      return Chat(
        id: data['id'] as String,
        usersId: data['usersId'] as List<String>,
      );
    } else {
      return null;
    }
  }

  @override
  Future<List<Chat>> getChatsForUser(String userId) async {
    final QuerySnapshot querySnapshot = await _firestore
        .collection(_name)
        .where('usersId', arrayContains: userId)
        .get();

    final List<Chat> chats = [];

    for (final DocumentSnapshot documentSnapshot in querySnapshot.docs) {
      final Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      chats.add(Chat(
        id: data['id'] as String,
        usersId: data['usersId'] as List<String>,
      ));
    }

    return chats;
  }

  @override
  Future<List<Chat>> getAllChats() async {
    final QuerySnapshot querySnapshot =
        await _firestore.collection(_name).get();

    final List<Chat> chats = [];

    for (final DocumentSnapshot documentSnapshot in querySnapshot.docs) {
      final Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      chats.add(Chat(
        id: data['id'] as String,
        usersId: data['usersId'] as List<String>,
      ));
    }

    return chats;
  }

  @override
  Future<void> deleteChat(Chat chat) async {
    await _firestore.collection(_name).doc(chat.id).delete();
  }

  @override
  Future<void> addUserToChat(
      {required String chatId, required String userId}) async {
    await _firestore.collection(_name).doc(chatId).update({
      'usersId': FieldValue.arrayUnion([userId]),
    });
  }

  @override
  Future<void> removeUserFromChat(
      {required String chatId, required String userId}) async {
    await _firestore.collection(_name).doc(chatId).update({
      'usersId': FieldValue.arrayRemove([userId]),
    });
  }
}

