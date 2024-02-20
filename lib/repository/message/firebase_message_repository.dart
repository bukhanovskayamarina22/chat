import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_assignment_chat/repository/message/i_message_repository.dart';
import 'package:test_assignment_chat/repository/message/message.dart';
import 'package:uuid/uuid.dart';

class FirebaseMessageRepository implements IMessageRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String _name = 'messages';

  @override
  Future<Message> addMessage(
      String chatId, String message, String? imageURL) async {
    final DocumentReference docRef =
        _firestore.collection(_name).doc(Uuid().v4());
    final Timestamp timestamp = Timestamp.now();

    final Map<String, dynamic> data = {
      'id': docRef.id,
      'chatId': chatId,
      'message': message,
      'timeStamp': timestamp,
      'senderId': "1",
      'isSend': true,
      'isRead': false,
    };

    if (imageURL != null) {
      data['imageURL'] = imageURL;
    }

    await docRef.set(data);

    return Message(
      id: docRef.id,
      chatId: chatId,
      message: message,
      timeStamp: timestamp.toDate(),
      senderId: "1",
      isSend: true,
      isRead: false,
      imageURL: imageURL,
    );
  }

  @override
  Future<void> updateMessage(Message message) async {
    final DocumentReference docRef =
        _firestore.collection(_name).doc(message.id);

    final Map<String, dynamic> data = {
      'message': message.message,
      'timeStamp': Timestamp.fromDate(message.timeStamp),
      'senderId': message.senderId,
      'isSend': message.isSend,
      'isRead': message.isRead,
    };

    if (message.imageURL != null) {
      data['imageURL'] = message.imageURL;
    }

    await docRef.update(data);
  }

  @override
  Future<List<Message>> getMessagesForChat(String chatId) async {
    final QuerySnapshot querySnapshot = await _firestore
        .collection(_name)
        .where('chatId', isEqualTo: chatId)
        .get();

    final List<Message> messages = [];

    for (final DocumentSnapshot documentSnapshot in querySnapshot.docs) {
      final Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      messages.add(Message(
        id: data['id'] as String,
        chatId: data['chatId'] as String,
        message: data['message'] as String,
        timeStamp: (data['timeStamp'] as Timestamp).toDate(),
        senderId: data['senderId'] as String,
        isSend: data['isSend'] as bool,
        isRead: data['isRead'] as bool,
        imageURL: data['imageURL'] as String?,
      ));
    }

    return messages;
  }

  @override
  Future<Message?> getLastMessageInChat(String chatId) async {
    final QuerySnapshot querySnapshot = await _firestore
        .collection(_name)
        .where('chatId', isEqualTo: chatId)
        .orderBy('timeStamp', descending: true)
        .limit(1)
        .get();

    if (querySnapshot.docs.isEmpty) {
      return null;
    }

    final DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
    final Map<String, dynamic> data =
        documentSnapshot.data() as Map<String, dynamic>;

    return Message(
      id: data['id'] as String,
      chatId: data['chatId'] as String,
      message: data['message'] as String,
      timeStamp: (data['timeStamp'] as Timestamp).toDate(),
      senderId: data['senderId'] as String,
      isSend: data['isSend'] as bool,
      isRead: data['isRead'] as bool,
      imageURL: data['imageURL'] as String?,
    );
  }

  @override
  Future<Message?> getMessageById(String id) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(_name).doc(id).get();

    if (!documentSnapshot.exists) {
      return null;
    }

    final Map<String, dynamic> data =
        documentSnapshot.data() as Map<String, dynamic>;

    return Message(
      id: data['id'] as String,
      chatId: data['chatId'] as String,
      message: data['message'] as String,
      timeStamp: (data['timeStamp'] as Timestamp).toDate(),
      senderId: data['senderId'] as String,
      isSend: data['isSend'] as bool,
      isRead: data['isRead'] as bool,
      imageURL: data['imageURL'] as String?,
    );
  }

  @override
  Future<void> deleteMessage(Message message) async {
    await _firestore.collection(_name).doc(message.id).delete();
  }
}
