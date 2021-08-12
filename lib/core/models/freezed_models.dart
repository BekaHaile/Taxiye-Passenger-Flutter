import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_models.freezed.dart';
part 'freezed_models.g.dart';

/*
  List of all application model/ data classes.
  With Class Immutability, json parser using freezed annotations.
  Use the following to run the code generator
    build and generate files
	  $ flutter pub run build_runner build 
    or
	  $ flutter pub run build_runner build --delete-conflicting-outputs
*/

@freezed
class User with _$User {
  factory User({
    String? fullName,
    String? email,
    String? phone,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Files with _$Files {
  factory Files(@JsonKey(name: '_id') String id, String userId, String url,
      {String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt}) = _Files;

  factory Files.build({Files? file}) => file ?? Files('', '', '');
  factory Files.fromJson(Map<String, dynamic> json) => _$FilesFromJson(json);
}

@freezed
class Vehicle with _$Vehicle {
  factory Vehicle({
    String? name,
    String? liscensePlate,
    double? price,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}

@freezed
class Driver with _$Driver {
  factory Driver({
    String? name,
    double? rating,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
class Order with _$Order {
  factory Order({
    Driver? driver,
    double? amount,
    DateTime? orderTime,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Payment with _$Payment {
  factory Payment({
    String? name,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    String? type,
    DateTime? date,
    double? amount,
    String? reason,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
