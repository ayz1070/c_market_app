// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_info.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationInfoDtoImpl _$$NotificationInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationInfoDtoImpl(
      notificationId: json['notificationId'] as String? ?? '',
      title: json['title'] as String? ?? '',
      message: json['message'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
      productImages: (json['productImages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NotificationInfoDtoImplToJson(
        _$NotificationInfoDtoImpl instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'title': instance.title,
      'message': instance.message,
      'imageUrl': instance.imageUrl,
      'timestamp': instance.timestamp,
      'productImages': instance.productImages,
    };
