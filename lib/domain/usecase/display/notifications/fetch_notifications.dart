import '../../../model/display/notification/notification.model.dart';
import '../../../repository/notification_repository.dart';

class FetchNotifications {
  final NotificationRepository repository;

  FetchNotifications(this.repository);

  Future<List<Notification>> call() {
    return repository.fetchNotifications();
  }
}