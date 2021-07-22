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
