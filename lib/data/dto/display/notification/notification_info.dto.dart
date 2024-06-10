import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_info.dto.freezed.dart';
part 'notification_info.dto.g.dart';

@freezed
class NotificationInfoDto with _$NotificationInfoDto {
  const factory NotificationInfoDto({
    @Default('') String? notificationId,
    @Default('') String? title,
    @Default('') String? message,
    @Default('') String? imageUrl,
    @Default('') String? timestamp,
  }) = _NotificationInfoDto;

  factory NotificationInfoDto.fromJson(Map<String, Object?> json) =>
      _$NotificationInfoDtoFromJson(json);
}