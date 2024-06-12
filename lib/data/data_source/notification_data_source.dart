import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../dto/display/notification/notification_info.dto.dart';

@lazySingleton
class NotificationDataSource {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  NotificationDataSource(this._firestore) : _storage = GetIt.instance<FirebaseStorage>();

  Future<List<NotificationInfoDto>> fetchNotifications() async {
    final querySnapshot = await _firestore.collection('notifications').get();

    return await Future.wait(querySnapshot.docs.map((doc) async {
      var data = doc.data();
      data['imageUrl'] = await _getImageUrl(data['imageUrl']);
      if (data['productImages'] != null) {
        data['productImages'] = await Future.wait(
          (data['productImages'] as List<dynamic>)
              .map((imagePath) => _getImageUrl(imagePath as String)),
        );
      }

      return NotificationInfoDto.fromJson(data as Map<String, dynamic>);
    }).toList());
  }

  Future<String> _getImageUrl(String imagePath) async {
    return await _storage.ref(imagePath).getDownloadURL();
  }
}
