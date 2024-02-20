
import 'package:test_assignment_chat/repository/user/user.dart';

abstract class IUserRepository {

  Future<void> addUser(User user);

  Future<void> updateUser(User user);

  Future<User?> getUserById(String id);  

  Future<User?> getUserByName(String name);

  Future<List<User>> getAllUsers();

  Future<void> deleteUser(User user);
}