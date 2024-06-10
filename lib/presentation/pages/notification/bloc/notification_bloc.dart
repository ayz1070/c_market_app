import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/model/display/notification/notification.model.dart';
import '../../../../domain/usecase/display/notifications/fetch_notifications.dart';

part 'notification_event.dart';

part 'notification_state.dart';

@injectable
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final FetchNotifications fetchNotifications;

  NotificationBloc(this.fetchNotifications) : super(NotificationInitial()) {
    on<LoadNotificationsEvent>((event, emit) async {
      try {
        emit(NotificationLoading());
        final notifications = await fetchNotifications();
        emit(NotificationLoaded(notifications: notifications));
      } catch (e) {
        emit(NotificationError("Failed to fetch Notifications"));
      }
    });
  }
}
