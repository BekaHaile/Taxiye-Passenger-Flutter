// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    fullName: json['fullName'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_Files _$_$_FilesFromJson(Map<String, dynamic> json) {
  return _$_Files(
    json['_id'] as String,
    json['userId'] as String,
    json['url'] as String,
    name: json['name'] as String?,
    originalName: json['originalName'] as String?,
    contentType: json['contentType'] as String?,
    size: json['size'] as int?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_FilesToJson(_$_Files instance) => <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'url': instance.url,
      'name': instance.name,
      'originalName': instance.originalName,
      'contentType': instance.contentType,
      'size': instance.size,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
