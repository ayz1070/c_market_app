import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/dto/display/notification/notification_info.dto.dart';

part 'notification.model.freezed.dart';
part 'notification.model.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required String notificationId,
    required String title,
    required String message,
    required String imageUrl,
    required String timestamp,
    @Default([]) List<String> productImages,
  }) = _Notification;

  // DTO를 도메인 모델로 변환하는 메서드
  factory Notification.fromDto(NotificationInfoDto dto) {
    return Notification(
      notificationId: dto.notificationId ?? '',
      title: dto.title ?? '',
      message: dto.message ?? '',
      imageUrl: dto.imageUrl ?? '',
      timestamp: dto.timestamp ?? '',
      productImages: dto.productImages ?? [],
    );
  }

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}