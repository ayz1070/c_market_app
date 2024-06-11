// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_info.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationInfoDto _$NotificationInfoDtoFromJson(Map<String, dynamic> json) {
  return _NotificationInfoDto.fromJson(json);
}

/// @nodoc
mixin _$NotificationInfoDto {
  String? get notificationId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  List<String> get productImages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationInfoDtoCopyWith<NotificationInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationInfoDtoCopyWith<$Res> {
  factory $NotificationInfoDtoCopyWith(
          NotificationInfoDto value, $Res Function(NotificationInfoDto) then) =
      _$NotificationInfoDtoCopyWithImpl<$Res, NotificationInfoDto>;
  @useResult
  $Res call(
      {String? notificationId,
      String? title,
      String? message,
      String? imageUrl,
      String? timestamp,
      List<String> productImages});
}

/// @nodoc
class _$NotificationInfoDtoCopyWithImpl<$Res, $Val extends NotificationInfoDto>
    implements $NotificationInfoDtoCopyWith<$Res> {
  _$NotificationInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? imageUrl = freezed,
    Object? timestamp = freezed,
    Object? productImages = null,
  }) {
    return _then(_value.copyWith(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationInfoDtoImplCopyWith<$Res>
    implements $NotificationInfoDtoCopyWith<$Res> {
  factory _$$NotificationInfoDtoImplCopyWith(_$NotificationInfoDtoImpl value,
          $Res Function(_$NotificationInfoDtoImpl) then) =
      __$$NotificationInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? notificationId,
      String? title,
      String? message,
      String? imageUrl,
      String? timestamp,
      List<String> productImages});
}

/// @nodoc
class __$$NotificationInfoDtoImplCopyWithImpl<$Res>
    extends _$NotificationInfoDtoCopyWithImpl<$Res, _$NotificationInfoDtoImpl>
    implements _$$NotificationInfoDtoImplCopyWith<$Res> {
  __$$NotificationInfoDtoImplCopyWithImpl(_$NotificationInfoDtoImpl _value,
      $Res Function(_$NotificationInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? imageUrl = freezed,
    Object? timestamp = freezed,
    Object? productImages = null,
  }) {
    return _then(_$NotificationInfoDtoImpl(
      notificationId: freezed == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationInfoDtoImpl implements _NotificationInfoDto {
  const _$NotificationInfoDtoImpl(
      {this.notificationId = '',
      this.title = '',
      this.message = '',
      this.imageUrl = '',
      this.timestamp = '',
      final List<String> productImages = const []})
      : _productImages = productImages;

  factory _$NotificationInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationInfoDtoImplFromJson(json);

  @override
  @JsonKey()
  final String? notificationId;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final String? imageUrl;
  @override
  @JsonKey()
  final String? timestamp;
  final List<String> _productImages;
  @override
  @JsonKey()
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  String toString() {
    return 'NotificationInfoDto(notificationId: $notificationId, title: $title, message: $message, imageUrl: $imageUrl, timestamp: $timestamp, productImages: $productImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationInfoDtoImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, title, message,
      imageUrl, timestamp, const DeepCollectionEquality().hash(_productImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationInfoDtoImplCopyWith<_$NotificationInfoDtoImpl> get copyWith =>
      __$$NotificationInfoDtoImplCopyWithImpl<_$NotificationInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _NotificationInfoDto implements NotificationInfoDto {
  const factory _NotificationInfoDto(
      {final String? notificationId,
      final String? title,
      final String? message,
      final String? imageUrl,
      final String? timestamp,
      final List<String> productImages}) = _$NotificationInfoDtoImpl;

  factory _NotificationInfoDto.fromJson(Map<String, dynamic> json) =
      _$NotificationInfoDtoImpl.fromJson;

  @override
  String? get notificationId;
  @override
  String? get title;
  @override
  String? get message;
  @override
  String? get imageUrl;
  @override
  String? get timestamp;
  @override
  List<String> get productImages;
  @override
  @JsonKey(ignore: true)
  _$$NotificationInfoDtoImplCopyWith<_$NotificationInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
