import 'package:test_assignment_chat/repository/user_online/user_online.dart';

abstract class IUserOnlineRepository {

  Future<void> addUserOnline(UserOnline userOnline);

  Future<void> updateUserOnline(UserOnline userOnline);

  Future<UserOnline?> getUserOnlineByUserId(String userId);

  Future<List<UserOnline>> getUsersOnlineBetweenDates(
      DateTime startDate, DateTime endDate);

  Future<void> deleteUserOnline(UserOnline userOnline);

  Future<void> setUserOnline(
      {required String userId, required DateTime timestamp});

  Future<void> setUserOffline(
      {required String userId, required DateTime timestamp});

}