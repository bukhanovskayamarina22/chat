import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:test_assignment_chat/repository/user_online/i_user_online_repository.dart';
import 'package:test_assignment_chat/repository/user_online/user_online.dart';

// ignore: non_constant_identifier_names
class UserOnlineRepository implements IUserOnlineRepository {

final String _name = 'user_online';
// Create a FirebaseFirestore instance
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// add a user online record
@override
Future<void> addUserOnline(UserOnline userOnline) async {
  try {
    // add the user online record to the users_online collection
    await _firestore.collection(_name).add(userOnline.toJson());
  } catch (e) {
    // handle errors by printing them to the console
        if (kDebugMode) {
      print(e);
    }
  }
}

// update a user online record
@override
Future<void> updateUserOnline(UserOnline userOnline) async {
  try {
    // update the user online record in the users_online collection
    await _firestore
        .collection(_name)
        .doc(userOnline.userId)
        .update(userOnline.toJson());
  } catch (e) {
    // handle errors by printing them to the console
    if (kDebugMode) {
          if (kDebugMode) {
      print(e);
    }
    }
  }
}

// get a user online record by user ID
@override
Future<UserOnline?> getUserOnlineByUserId(String userId) async {
  try {
    // get the user online record with the given user ID from the users_online collection
    final DocumentSnapshot doc = await _firestore.collection(_name).doc(userId).get();

    // check if the document exists
    if (doc.exists) {
      // convert the document data to a UserOnline object and return it
      return UserOnline.fromJson(doc.data() as Map<String, dynamic>);
    } else {
      // if the document doesn't exist, return null
      return null;
    }
  } catch (e) {
    // handle errors by printing them to the console and returning null
        if (kDebugMode) {
      print(e);
    }
    return null;
  }
}

// get users online between two dates
@override
Future<List<UserOnline>> getUsersOnlineBetweenDates(DateTime startDate, DateTime endDate) async {
  try {
    // get users online between the given dates from the users_online collection
    final QuerySnapshot snapshot = await _firestore
        .collection(_name)
        .where('lastTimeConnected', isGreaterThanOrEqualTo: startDate)
        .where('lastTimeConnected', isLessThanOrEqualTo: endDate)
        .get();

    // convert all documents to UserOnline objects and return them
    return snapshot.docs
        .map((doc) => UserOnline.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  } catch (e) {
    // handle errors by printing them to the console and returning an empty list
        if (kDebugMode) {
      print(e);
    }
    return [];
  }
}

// delete a user online record
@override
Future<void> deleteUserOnline(UserOnline userOnline) async {
  try {
    // delete the user online record from the users_online collection
    await _firestore.collection(_name).doc(userOnline.userId).delete();
  } catch (e) {
    // handle errors by printing them to the console
        if (kDebugMode) {
      print(e);
    }
  }
}

// set a user online record
@override
Future<void> setUserOnline({required String userId, required DateTime timestamp}) async {
  try {
    // set the user online record in the users_online collection
    await _firestore.collection(_name).doc(userId).set({
      'userId': userId,
      'lastTimeConnected': timestamp,
      'lastTimeDisconnected': null,
    });
  } catch (e) {
    // handle errors by printing them to the console
        if (kDebugMode) {
      print(e);
    }
  }
}

// set a user offline record
@override
Future<void> setUserOffline({required String userId, required DateTime timestamp}) async {
  try {
    // set the user offline record in the users_online collection
    await _firestore.collection(_name).doc(userId).set({
      'userId': userId,
      'lastTimeConnected': null,
      'lastTimeDisconnected': timestamp,
    });
  } catch (e) {
    // handle errors by printing them to the console
        if (kDebugMode) {
      print(e);
    }
  }
}
}