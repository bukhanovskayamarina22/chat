import 'package:test_assignment_chat/repository/chat/chat.dart';
import 'package:test_assignment_chat/repository/message/message.dart';
import 'package:test_assignment_chat/repository/user/user.dart';
import 'package:test_assignment_chat/repository/user_online/user_online.dart';

List<User> users = [
  User(id: "1", name: "This User"),
  User(id: "2", name: "Виктор Власов"),
  User(id: "3", name: "Саша Алексеев"),
  User(id: "4", name: "Пётр Жаринов"),
  User(id: "5", name: "Алина Жукова"),
];

List<UserOnline> userOnline = [
  UserOnline(
      userId: "1",
      lastTimeConnected: DateTime(2022, 01, 28, 9, 41, 16),
      lastTimeDisconnected: DateTime(2022, 01, 28, 10, 41, 16)), 
  UserOnline(
      userId: "2",
      lastTimeConnected: DateTime(2022, 01, 28, 9, 41, 16),
      lastTimeDisconnected: DateTime(2022, 01, 28, 8, 41, 16)), 
      UserOnline(
      userId: "3",
      lastTimeConnected: DateTime(2022, 01, 28, 9, 41, 16),
      lastTimeDisconnected: DateTime(2022, 01, 28, 11, 41, 16)), 
      UserOnline(
      userId: "4",
      lastTimeConnected: DateTime(2022, 01, 28, 9, 41, 16),
      lastTimeDisconnected: DateTime(2022, 01, 28, 7, 41, 16)), 
];

List<Chat> chats = [
  const Chat(id: "1", usersId: ["1", "2"]),
  const Chat(id: "2", usersId: ["1", "3"]),
  const Chat(id: "3", usersId: ["1", "4"]),
  const Chat(id: "4", usersId: ["1", "5"]),
];

List<Message> messages = [
  Message(
      id: "1",
      isSend: true,
      isRead: true,
      imageURL: "image_1",
      message: "Какие горы",
      senderId: "1",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 26, 21, 41, 13)),
  Message(
      id: "2",
      isSend: true,
      isRead: true,
      message: "Сделай мне кофе, пожалуйста",
      senderId: "1",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 27, 21, 41, 13)),
  Message(
      id: "3",
      isSend: true,
      isRead: true,
      message: "Хорошо",
      imageURL: "image_1",
      senderId: "2",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 27, 21, 41, 14)),
  Message(
      id: "4",
      isSend: true,
      isRead: true,
      message: "Хорошо",
      senderId: "2",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 27, 21, 41, 15)),
  Message(
      id: "5",
      isSend: true,
      isRead: false,
      message: "Уже сделал?",
      senderId: "1",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 28, 9, 41, 15)),
  Message(
      id: "6",
      isSend: true,
      isRead: false,
      message: "Мне просто срочно нужно",
      senderId: "1",
      chatId: "1",
      timeStamp: DateTime(2022, 01, 28, 9, 41, 16)),
  Message(
      id: "7",
      isSend: true,
      isRead: false,
      message: "Я готов",
      senderId: "3",
      chatId: "2",
      timeStamp: DateTime(2022, 01, 12, 06, 12, 44)),
  Message(
      id: "8",
      isSend: true,
      isRead: false,
      message: "Я вышел",
      senderId: "1",
      chatId: "3",
      timeStamp: DateTime(2022, 01, 28, 10, 37, 12)),
  Message(
      id: "9",
      isSend: true,
      isRead: true,
      message: "Я вышел",
      senderId: "1",
      chatId: "4",
      timeStamp: DateTime(2022, 01, 28, 09, 23, 12)),
];