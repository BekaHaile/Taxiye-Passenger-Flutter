// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'freezed_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call({String? fullName, String? email, String? phone}) {
    return _User(
      fullName: fullName,
      email: email,
      phone: phone,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({String? fullName, String? email, String? phone});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String? fullName, String? email, String? phone});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_User(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User({this.fullName, this.email, this.phone});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'User(fullName: $fullName, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User({String? fullName, String? email, String? phone}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get fullName => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Files _$FilesFromJson(Map<String, dynamic> json) {
  return _Files.fromJson(json);
}

/// @nodoc
class _$FilesTearOff {
  const _$FilesTearOff();

  _Files call(@JsonKey(name: '_id') String id, String userId, String url,
      {String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Files(
      id,
      userId,
      url,
      name: name,
      originalName: originalName,
      contentType: contentType,
      size: size,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Files fromJson(Map<String, Object> json) {
    return Files.fromJson(json);
  }
}

/// @nodoc
const $Files = _$FilesTearOff();

/// @nodoc
mixin _$Files {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesCopyWith<Files> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesCopyWith<$Res> {
  factory $FilesCopyWith(Files value, $Res Function(Files) then) =
      _$FilesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String url,
      String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$FilesCopyWithImpl<$Res> implements $FilesCopyWith<$Res> {
  _$FilesCopyWithImpl(this._value, this._then);

  final Files _value;
  // ignore: unused_field
  final $Res Function(Files) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? contentType = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$FilesCopyWith<$Res> implements $FilesCopyWith<$Res> {
  factory _$FilesCopyWith(_Files value, $Res Function(_Files) then) =
      __$FilesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String userId,
      String url,
      String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$FilesCopyWithImpl<$Res> extends _$FilesCopyWithImpl<$Res>
    implements _$FilesCopyWith<$Res> {
  __$FilesCopyWithImpl(_Files _value, $Res Function(_Files) _then)
      : super(_value, (v) => _then(v as _Files));

  @override
  _Files get _value => super._value as _Files;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? contentType = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Files(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Files implements _Files {
  _$_Files(@JsonKey(name: '_id') this.id, this.userId, this.url,
      {this.name,
      this.originalName,
      this.contentType,
      this.size,
      this.createdAt,
      this.updatedAt});

  factory _$_Files.fromJson(Map<String, dynamic> json) =>
      _$_$_FilesFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String userId;
  @override
  final String url;
  @override
  final String? name;
  @override
  final String? originalName;
  @override
  final String? contentType;
  @override
  final int? size;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Files(id: $id, userId: $userId, url: $url, name: $name, originalName: $originalName, contentType: $contentType, size: $size, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Files &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originalName, originalName) ||
                const DeepCollectionEquality()
                    .equals(other.originalName, originalName)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originalName) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$FilesCopyWith<_Files> get copyWith =>
      __$FilesCopyWithImpl<_Files>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilesToJson(this);
  }
}

abstract class _Files implements Files {
  factory _Files(@JsonKey(name: '_id') String id, String userId, String url,
      {String? name,
      String? originalName,
      String? contentType,
      int? size,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Files;

  factory _Files.fromJson(Map<String, dynamic> json) = _$_Files.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get originalName => throw _privateConstructorUsedError;
  @override
  String? get contentType => throw _privateConstructorUsedError;
  @override
  int? get size => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilesCopyWith<_Files> get copyWith => throw _privateConstructorUsedError;
}

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
class _$VehicleTearOff {
  const _$VehicleTearOff();

  _Vehicle call({String? name, String? liscensePlate, double? price}) {
    return _Vehicle(
      name: name,
      liscensePlate: liscensePlate,
      price: price,
    );
  }

  Vehicle fromJson(Map<String, Object> json) {
    return Vehicle.fromJson(json);
  }
}

/// @nodoc
const $Vehicle = _$VehicleTearOff();

/// @nodoc
mixin _$Vehicle {
  String? get name => throw _privateConstructorUsedError;
  String? get liscensePlate => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res>;
  $Res call({String? name, String? liscensePlate, double? price});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  final Vehicle _value;
  // ignore: unused_field
  final $Res Function(Vehicle) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? liscensePlate = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      liscensePlate: liscensePlate == freezed
          ? _value.liscensePlate
          : liscensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) then) =
      __$VehicleCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? liscensePlate, double? price});
}

/// @nodoc
class __$VehicleCopyWithImpl<$Res> extends _$VehicleCopyWithImpl<$Res>
    implements _$VehicleCopyWith<$Res> {
  __$VehicleCopyWithImpl(_Vehicle _value, $Res Function(_Vehicle) _then)
      : super(_value, (v) => _then(v as _Vehicle));

  @override
  _Vehicle get _value => super._value as _Vehicle;

  @override
  $Res call({
    Object? name = freezed,
    Object? liscensePlate = freezed,
    Object? price = freezed,
  }) {
    return _then(_Vehicle(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      liscensePlate: liscensePlate == freezed
          ? _value.liscensePlate
          : liscensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  _$_Vehicle({this.name, this.liscensePlate, this.price});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFromJson(json);

  @override
  final String? name;
  @override
  final String? liscensePlate;
  @override
  final double? price;

  @override
  String toString() {
    return 'Vehicle(name: $name, liscensePlate: $liscensePlate, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vehicle &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.liscensePlate, liscensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.liscensePlate, liscensePlate)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(liscensePlate) ^
      const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      __$VehicleCopyWithImpl<_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicleToJson(this);
  }
}

abstract class _Vehicle implements Vehicle {
  factory _Vehicle({String? name, String? liscensePlate, double? price}) =
      _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get liscensePlate => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
class _$DriverTearOff {
  const _$DriverTearOff();

  _Driver call({String? name, double? rating}) {
    return _Driver(
      name: name,
      rating: rating,
    );
  }

  Driver fromJson(Map<String, Object> json) {
    return Driver.fromJson(json);
  }
}

/// @nodoc
const $Driver = _$DriverTearOff();

/// @nodoc
mixin _$Driver {
  String? get name => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call({String? name, double? rating});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) then) =
      __$DriverCopyWithImpl<$Res>;
  @override
  $Res call({String? name, double? rating});
}

/// @nodoc
class __$DriverCopyWithImpl<$Res> extends _$DriverCopyWithImpl<$Res>
    implements _$DriverCopyWith<$Res> {
  __$DriverCopyWithImpl(_Driver _value, $Res Function(_Driver) _then)
      : super(_value, (v) => _then(v as _Driver));

  @override
  _Driver get _value => super._value as _Driver;

  @override
  $Res call({
    Object? name = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Driver(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  _$_Driver({this.name, this.rating});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverFromJson(json);

  @override
  final String? name;
  @override
  final double? rating;

  @override
  String toString() {
    return 'Driver(name: $name, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Driver &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$DriverCopyWith<_Driver> get copyWith =>
      __$DriverCopyWithImpl<_Driver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DriverToJson(this);
  }
}

abstract class _Driver implements Driver {
  factory _Driver({String? name, double? rating}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverCopyWith<_Driver> get copyWith => throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call({Driver? driver, double? amount, DateTime? orderTime}) {
    return _Order(
      driver: driver,
      amount: amount,
      orderTime: orderTime,
    );
  }

  Order fromJson(Map<String, Object> json) {
    return Order.fromJson(json);
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  Driver? get driver => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  DateTime? get orderTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call({Driver? driver, double? amount, DateTime? orderTime});

  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? driver = freezed,
    Object? amount = freezed,
    Object? orderTime = freezed,
  }) {
    return _then(_value.copyWith(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value));
    });
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call({Driver? driver, double? amount, DateTime? orderTime});

  @override
  $DriverCopyWith<$Res>? get driver;
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? driver = freezed,
    Object? amount = freezed,
    Object? orderTime = freezed,
  }) {
    return _then(_Order(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  _$_Order({this.driver, this.amount, this.orderTime});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderFromJson(json);

  @override
  final Driver? driver;
  @override
  final double? amount;
  @override
  final DateTime? orderTime;

  @override
  String toString() {
    return 'Order(driver: $driver, amount: $amount, orderTime: $orderTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Order &&
            (identical(other.driver, driver) ||
                const DeepCollectionEquality().equals(other.driver, driver)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.orderTime, orderTime) ||
                const DeepCollectionEquality()
                    .equals(other.orderTime, orderTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(driver) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(orderTime);

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderToJson(this);
  }
}

abstract class _Order implements Order {
  factory _Order({Driver? driver, double? amount, DateTime? orderTime}) =
      _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  Driver? get driver => throw _privateConstructorUsedError;
  @override
  double? get amount => throw _privateConstructorUsedError;
  @override
  DateTime? get orderTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
class _$PaymentTearOff {
  const _$PaymentTearOff();

  _Payment call({String? name}) {
    return _Payment(
      name: name,
    );
  }

  Payment fromJson(Map<String, Object> json) {
    return Payment.fromJson(json);
  }
}

/// @nodoc
const $Payment = _$PaymentTearOff();

/// @nodoc
mixin _$Payment {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res> implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  final Payment _value;
  // ignore: unused_field
  final $Res Function(Payment) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) then) =
      __$PaymentCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class __$PaymentCopyWithImpl<$Res> extends _$PaymentCopyWithImpl<$Res>
    implements _$PaymentCopyWith<$Res> {
  __$PaymentCopyWithImpl(_Payment _value, $Res Function(_Payment) _then)
      : super(_value, (v) => _then(v as _Payment));

  @override
  _Payment get _value => super._value as _Payment;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Payment(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  _$_Payment({this.name});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'Payment(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payment &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PaymentCopyWith<_Payment> get copyWith =>
      __$PaymentCopyWithImpl<_Payment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentToJson(this);
  }
}

abstract class _Payment implements Payment {
  factory _Payment({String? name}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PaymentCopyWith<_Payment> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  _Transaction call(
      {String? type, DateTime? date, double? amount, String? reason}) {
    return _Transaction(
      type: type,
      date: date,
      amount: amount,
      reason: reason,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  String? get type => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call({String? type, DateTime? date, double? amount, String? reason});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call({String? type, DateTime? date, double? amount, String? reason});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object? type = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? reason = freezed,
  }) {
    return _then(_Transaction(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  _$_Transaction({this.type, this.date, this.amount, this.reason});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @override
  final String? type;
  @override
  final DateTime? date;
  @override
  final double? amount;
  @override
  final String? reason;

  @override
  String toString() {
    return 'Transaction(type: $type, date: $date, amount: $amount, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionToJson(this);
  }
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {String? type,
      DateTime? date,
      double? amount,
      String? reason}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  double? get amount => throw _privateConstructorUsedError;
  @override
  String? get reason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionCopyWith<_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
