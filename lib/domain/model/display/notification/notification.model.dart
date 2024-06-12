import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/dto/display/notification/notification_info.dto.dart';

part 'notification.model.freezed.dart';
part 'notification.model.g.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    required String notificationId,
    required String title,
    required String message,
    required String imageUrl,
    required String timestamp,
    @Default([]) List<String> productImages,
  }) = _Notification;

  // DTO를 도메인 모델로 변환하는 메서드
  factory AppNotification.fromDto(NotificationInfoDto dto) {
    return AppNotification(
      notificationId: dto.notificationId ?? '',
      title: dto.title ?? '',
      message: dto.message ?? '',
      imageUrl: dto.imageUrl ?? '',
      timestamp: dto.timestamp ?? '',
      productImages: dto.productImages ?? [],
    );
  }

  factory AppNotification.fromJson(Map<String, dynamic> json) => _$AppNotificationFromJson(json);
}