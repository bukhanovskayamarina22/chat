import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:test_assignment_chat/repository/user/i_user_repository.dart';
import 'package:test_assignment_chat/repository/user/user.dart';

class UserRepository implements IUserRepository {

  final String _name = 'users';
  // Create a FirebaseFirestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> addUser(User user) async {
    try {
      // Convert the user to JSON and add it to the users collection
      await _firestore.collection(_name).add(user.toJson());
    } catch (e) {
      // Handle errors by returning null
          if (kDebugMode) {
      print(e);
    }
      return null;
    }
  }

  @override
  Future<void> updateUser(User user) async {
    try {
      // Convert the user to JSON and update it in the users collection
      await _firestore
          .collection(_name)
          .doc(user.id)
          .update(user.toJson());
    } catch (e) {
      // Handle errors by returning null
          if (kDebugMode) {
      print(e);
    }
      return null;
    }
  }

  @override
  Future<User?> getUserById(String id) async {
    try {
      // Retrieve the user with the given ID from the users collection
      final DocumentSnapshot doc =
          await _firestore.collection(_name).doc(id).get();

      // Check if the document exists
      if (doc.exists) {
        // Convert the document data to a User object and return it
        return User.fromJson(doc.data() as Map<String, dynamic>);
      } else {
        // If the document doesn't exist, return null
        return null;
      }
    } catch (e) {
      // Handle errors by returning null
          if (kDebugMode) {
      print(e);
    }
      return null;
    }
  }

  @override
  Future<User?> getUserByName(String name) async {
    try {
      // Retrieve the user with the given name from the users collection
      final QuerySnapshot snapshot = await _firestore
          .collection(_name)
          .where('name', isEqualTo: name)
          .get();

      // Check if the query returned any documents
      if (snapshot.docs.isNotEmpty) {
        // Convert the first document to a User object and return it
        return User.fromJson(
            snapshot.docs.first.data() as Map<String, dynamic>);
      } else {
        // If no documents were found, return null
        return null;
      }
    } catch (e) {
      // Handle errors by returning null
          if (kDebugMode) {
      print(e);
    }
      return null;
    }
  }

  @override
  Future<List<User>> getAllUsers() async {
    try {
      // Retrieve all users from the users collection
      final QuerySnapshot snapshot = await _firestore.collection(_name).get();

      // Convert all documents to User objects and return them
      return snapshot.docs
          .map((doc) => User.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Handle errors by returning an empty list
          if (kDebugMode) {
      print(e);
    }
      return [];
    }
  }
  
  @override
  Future<void> deleteUser(User user) async {
    await _firestore.collection(_name).doc(user.id).delete();
  }
}