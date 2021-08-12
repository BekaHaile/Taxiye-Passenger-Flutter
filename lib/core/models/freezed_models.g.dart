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

_$_Vehicle _$_$_VehicleFromJson(Map<String, dynamic> json) {
  return _$_Vehicle(
    name: json['name'] as String?,
    liscensePlate: json['liscensePlate'] as String?,
    price: (json['price'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_VehicleToJson(_$_Vehicle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'liscensePlate': instance.liscensePlate,
      'price': instance.price,
    };

_$_Driver _$_$_DriverFromJson(Map<String, dynamic> json) {
  return _$_Driver(
    name: json['name'] as String?,
    rating: (json['rating'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_DriverToJson(_$_Driver instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
    };

_$_Order _$_$_OrderFromJson(Map<String, dynamic> json) {
  return _$_Order(
    driver: json['driver'] == null
        ? null
        : Driver.fromJson(json['driver'] as Map<String, dynamic>),
    amount: (json['amount'] as num?)?.toDouble(),
    orderTime: json['orderTime'] == null
        ? null
        : DateTime.parse(json['orderTime'] as String),
  );
}

Map<String, dynamic> _$_$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'driver': instance.driver,
      'amount': instance.amount,
      'orderTime': instance.orderTime?.toIso8601String(),
    };

_$_Payment _$_$_PaymentFromJson(Map<String, dynamic> json) {
  return _$_Payment(
    name: json['name'] as String?,
  );
}

Map<String, dynamic> _$_$_PaymentToJson(_$_Payment instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    type: json['type'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    amount: (json['amount'] as num?)?.toDouble(),
    reason: json['reason'] as String?,
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'reason': instance.reason,
    };
