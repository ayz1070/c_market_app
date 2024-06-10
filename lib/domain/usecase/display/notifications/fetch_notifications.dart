import 'package:injectable/injectable.dart';

import '../../../model/display/notification/notification.model.dart';
import '../../../repository/notification_repository.dart';

@lazySingleton
class FetchNotifications {
  final NotificationRepository repository;

  FetchNotifications(this.repository);

  Future<List<Notification>> call() {
    return repository.fetchNotifications();
  }
}