import 'package:injectable/injectable.dart';

import '../../domain/model/display/notification/notification.model.dart';
import '../../domain/repository/notification_repository.dart';
import '../data_source/notification_data_source.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationDataSource _dataSource;

  NotificationRepositoryImpl(this._dataSource);

  @override
  Future<List<Notification>> fetchNotifications() async {
    final notificationDtos = await _dataSource.fetchNotifications();

    return notificationDtos.map((dto) => Notification.fromDto(dto)).toList();
  }

}