// Firebase Firestore에서 데이터를 가져오는 데이터 소스 클래스
import 'package:cloud_firestore/cloud_firestore.dart';

import '../dto/display/notification/notification_info.dto.dart';

class NotificationDataSource {
  final FirebaseFirestore _firestore;

  NotificationDataSource(this._firestore);

  // FireStore에서 알림 목록을 가져오는 메서드
  Future<List<NotificationInfoDto>> fetchNotifications() async {
    final querySnapshot = await _firestore.collection('notifications').get();

    return querySnapshot.docs
        .map((doc) =>
            NotificationInfoDto.fromJson(doc.data() as Map<String, Object?>))
        .toList();
  }
}
