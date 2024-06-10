import '../model/display/notification/notification.model.dart';

abstract class NotificationRepository {
  Future<List<Notification>> fetchNotifications();
}