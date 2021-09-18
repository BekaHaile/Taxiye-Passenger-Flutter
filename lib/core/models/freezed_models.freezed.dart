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

  _User call(
      @JsonKey(name: 'user_name')
          String userName,
      {int? flag,
      String? erorr,
      int? gender,
      @JsonKey(name: 'user_email')
          String? email,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
          String? countryCode,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(name: 'auth_key')
          String? authKey,
      @JsonKey(name: 'email_verification_status')
          int? emailVerificationStatus,
      @JsonKey(name: 'operator_id')
          int? operatorId,
      @JsonKey(name: 'city')
          String? city,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'default_client_id')
          String? defaultClientId}) {
    return _User(
      userName,
      flag: flag,
      erorr: erorr,
      gender: gender,
      email: email,
      userImage: userImage,
      countryCode: countryCode,
      phoneNo: phoneNo,
      dateOfBirth: dateOfBirth,
      authKey: authKey,
      emailVerificationStatus: emailVerificationStatus,
      operatorId: operatorId,
      city: city,
      cityId: cityId,
      referralCode: referralCode,
      userId: userId,
      defaultClientId: defaultClientId,
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
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  int? get flag => throw _privateConstructorUsedError;
  String? get erorr => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_key')
  String? get authKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verification_status')
  int? get emailVerificationStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator_id')
  int? get operatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_client_id')
  String? get defaultClientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'user_name')
          String userName,
      int? flag,
      String? erorr,
      int? gender,
      @JsonKey(name: 'user_email')
          String? email,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
          String? countryCode,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(name: 'auth_key')
          String? authKey,
      @JsonKey(name: 'email_verification_status')
          int? emailVerificationStatus,
      @JsonKey(name: 'operator_id')
          int? operatorId,
      @JsonKey(name: 'city')
          String? city,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'default_client_id')
          String? defaultClientId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? flag = freezed,
    Object? erorr = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? userImage = freezed,
    Object? countryCode = freezed,
    Object? phoneNo = freezed,
    Object? dateOfBirth = freezed,
    Object? authKey = freezed,
    Object? emailVerificationStatus = freezed,
    Object? operatorId = freezed,
    Object? city = freezed,
    Object? cityId = freezed,
    Object? referralCode = freezed,
    Object? userId = freezed,
    Object? defaultClientId = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      erorr: erorr == freezed
          ? _value.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      authKey: authKey == freezed
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerificationStatus: emailVerificationStatus == freezed
          ? _value.emailVerificationStatus
          : emailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId: operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultClientId: defaultClientId == freezed
          ? _value.defaultClientId
          : defaultClientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'user_name')
          String userName,
      int? flag,
      String? erorr,
      int? gender,
      @JsonKey(name: 'user_email')
          String? email,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
          String? countryCode,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(name: 'auth_key')
          String? authKey,
      @JsonKey(name: 'email_verification_status')
          int? emailVerificationStatus,
      @JsonKey(name: 'operator_id')
          int? operatorId,
      @JsonKey(name: 'city')
          String? city,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'default_client_id')
          String? defaultClientId});
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
    Object? userName = freezed,
    Object? flag = freezed,
    Object? erorr = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? userImage = freezed,
    Object? countryCode = freezed,
    Object? phoneNo = freezed,
    Object? dateOfBirth = freezed,
    Object? authKey = freezed,
    Object? emailVerificationStatus = freezed,
    Object? operatorId = freezed,
    Object? city = freezed,
    Object? cityId = freezed,
    Object? referralCode = freezed,
    Object? userId = freezed,
    Object? defaultClientId = freezed,
  }) {
    return _then(_User(
      userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      erorr: erorr == freezed
          ? _value.erorr
          : erorr // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      authKey: authKey == freezed
          ? _value.authKey
          : authKey // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerificationStatus: emailVerificationStatus == freezed
          ? _value.emailVerificationStatus
          : emailVerificationStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId: operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultClientId: defaultClientId == freezed
          ? _value.defaultClientId
          : defaultClientId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      @JsonKey(name: 'user_name')
          this.userName,
      {this.flag,
      this.erorr,
      this.gender,
      @JsonKey(name: 'user_email')
          this.email,
      @JsonKey(name: 'user_image')
          this.userImage,
      @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
          this.countryCode,
      @JsonKey(name: 'phone_no')
          this.phoneNo,
      @JsonKey(name: 'date_of_birth')
          this.dateOfBirth,
      @JsonKey(name: 'auth_key')
          this.authKey,
      @JsonKey(name: 'email_verification_status')
          this.emailVerificationStatus,
      @JsonKey(name: 'operator_id')
          this.operatorId,
      @JsonKey(name: 'city')
          this.city,
      @JsonKey(name: 'city_id')
          this.cityId,
      @JsonKey(name: 'referral_code')
          this.referralCode,
      @JsonKey(name: 'user_id')
          this.userId,
      @JsonKey(name: 'default_client_id')
          this.defaultClientId});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  final int? flag;
  @override
  final String? erorr;
  @override
  final int? gender;
  @override
  @JsonKey(name: 'user_email')
  final String? email;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
  final String? countryCode;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'auth_key')
  final String? authKey;
  @override
  @JsonKey(name: 'email_verification_status')
  final int? emailVerificationStatus;
  @override
  @JsonKey(name: 'operator_id')
  final int? operatorId;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'referral_code')
  final String? referralCode;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'default_client_id')
  final String? defaultClientId;

  @override
  String toString() {
    return 'User(userName: $userName, flag: $flag, erorr: $erorr, gender: $gender, email: $email, userImage: $userImage, countryCode: $countryCode, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, authKey: $authKey, emailVerificationStatus: $emailVerificationStatus, operatorId: $operatorId, city: $city, cityId: $cityId, referralCode: $referralCode, userId: $userId, defaultClientId: $defaultClientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.erorr, erorr) ||
                const DeepCollectionEquality().equals(other.erorr, erorr)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userImage, userImage) ||
                const DeepCollectionEquality()
                    .equals(other.userImage, userImage)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNo, phoneNo)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)) &&
            (identical(other.authKey, authKey) ||
                const DeepCollectionEquality()
                    .equals(other.authKey, authKey)) &&
            (identical(
                    other.emailVerificationStatus, emailVerificationStatus) ||
                const DeepCollectionEquality().equals(
                    other.emailVerificationStatus, emailVerificationStatus)) &&
            (identical(other.operatorId, operatorId) ||
                const DeepCollectionEquality()
                    .equals(other.operatorId, operatorId)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.referralCode, referralCode) ||
                const DeepCollectionEquality()
                    .equals(other.referralCode, referralCode)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.defaultClientId, defaultClientId) ||
                const DeepCollectionEquality()
                    .equals(other.defaultClientId, defaultClientId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(erorr) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(dateOfBirth) ^
      const DeepCollectionEquality().hash(authKey) ^
      const DeepCollectionEquality().hash(emailVerificationStatus) ^
      const DeepCollectionEquality().hash(operatorId) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(referralCode) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(defaultClientId);

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
  factory _User(
      @JsonKey(name: 'user_name')
          String userName,
      {int? flag,
      String? erorr,
      int? gender,
      @JsonKey(name: 'user_email')
          String? email,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
          String? countryCode,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'date_of_birth')
          String? dateOfBirth,
      @JsonKey(name: 'auth_key')
          String? authKey,
      @JsonKey(name: 'email_verification_status')
          int? emailVerificationStatus,
      @JsonKey(name: 'operator_id')
          int? operatorId,
      @JsonKey(name: 'city')
          String? city,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'referral_code')
          String? referralCode,
      @JsonKey(name: 'user_id')
          int? userId,
      @JsonKey(name: 'default_client_id')
          String? defaultClientId}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @override
  int? get flag => throw _privateConstructorUsedError;
  @override
  String? get erorr => throw _privateConstructorUsedError;
  @override
  int? get gender => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_code', fromJson: _countryCodeConverter)
  String? get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'auth_key')
  String? get authKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email_verification_status')
  int? get emailVerificationStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'operator_id')
  int? get operatorId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'referral_code')
  String? get referralCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'default_client_id')
  String? get defaultClientId => throw _privateConstructorUsedError;
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

  _Vehicle call(
      {@JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare,
      VehicleImage? images,
      String? vehicleNumber}) {
    return _Vehicle(
      regionId: regionId,
      operatorId: operatorId,
      regionName: regionName,
      vehicleType: vehicleType,
      iconSet: iconSet,
      rideType: rideType,
      maxPeople: maxPeople,
      regionFare: regionFare,
      images: images,
      vehicleNumber: vehicleNumber,
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
  @JsonKey(name: 'region_id')
  int? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator_id')
  int? get operatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_name')
  String? get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_set')
  String? get iconSet => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_people')
  int? get maxPeople => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_fare')
  VehicleFare? get regionFare => throw _privateConstructorUsedError;
  VehicleImage? get images => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare,
      VehicleImage? images,
      String? vehicleNumber});

  $VehicleFareCopyWith<$Res>? get regionFare;
  $VehicleImageCopyWith<$Res>? get images;
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  final Vehicle _value;
  // ignore: unused_field
  final $Res Function(Vehicle) _then;

  @override
  $Res call({
    Object? regionId = freezed,
    Object? operatorId = freezed,
    Object? regionName = freezed,
    Object? vehicleType = freezed,
    Object? iconSet = freezed,
    Object? rideType = freezed,
    Object? maxPeople = freezed,
    Object? regionFare = freezed,
    Object? images = freezed,
    Object? vehicleNumber = freezed,
  }) {
    return _then(_value.copyWith(
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId: operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      iconSet: iconSet == freezed
          ? _value.iconSet
          : iconSet // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPeople: maxPeople == freezed
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as int?,
      regionFare: regionFare == freezed
          ? _value.regionFare
          : regionFare // ignore: cast_nullable_to_non_nullable
              as VehicleFare?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as VehicleImage?,
      vehicleNumber: vehicleNumber == freezed
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $VehicleFareCopyWith<$Res>? get regionFare {
    if (_value.regionFare == null) {
      return null;
    }

    return $VehicleFareCopyWith<$Res>(_value.regionFare!, (value) {
      return _then(_value.copyWith(regionFare: value));
    });
  }

  @override
  $VehicleImageCopyWith<$Res>? get images {
    if (_value.images == null) {
      return null;
    }

    return $VehicleImageCopyWith<$Res>(_value.images!, (value) {
      return _then(_value.copyWith(images: value));
    });
  }
}

/// @nodoc
abstract class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) then) =
      __$VehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare,
      VehicleImage? images,
      String? vehicleNumber});

  @override
  $VehicleFareCopyWith<$Res>? get regionFare;
  @override
  $VehicleImageCopyWith<$Res>? get images;
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
    Object? regionId = freezed,
    Object? operatorId = freezed,
    Object? regionName = freezed,
    Object? vehicleType = freezed,
    Object? iconSet = freezed,
    Object? rideType = freezed,
    Object? maxPeople = freezed,
    Object? regionFare = freezed,
    Object? images = freezed,
    Object? vehicleNumber = freezed,
  }) {
    return _then(_Vehicle(
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      operatorId: operatorId == freezed
          ? _value.operatorId
          : operatorId // ignore: cast_nullable_to_non_nullable
              as int?,
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      iconSet: iconSet == freezed
          ? _value.iconSet
          : iconSet // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPeople: maxPeople == freezed
          ? _value.maxPeople
          : maxPeople // ignore: cast_nullable_to_non_nullable
              as int?,
      regionFare: regionFare == freezed
          ? _value.regionFare
          : regionFare // ignore: cast_nullable_to_non_nullable
              as VehicleFare?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as VehicleImage?,
      vehicleNumber: vehicleNumber == freezed
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  _$_Vehicle(
      {@JsonKey(name: 'region_id') this.regionId,
      @JsonKey(name: 'operator_id') this.operatorId,
      @JsonKey(name: 'region_name') this.regionName,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'icon_set') this.iconSet,
      @JsonKey(name: 'ride_type') this.rideType,
      @JsonKey(name: 'max_people') this.maxPeople,
      @JsonKey(name: 'region_fare') this.regionFare,
      this.images,
      this.vehicleNumber});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFromJson(json);

  @override
  @JsonKey(name: 'region_id')
  final int? regionId;
  @override
  @JsonKey(name: 'operator_id')
  final int? operatorId;
  @override
  @JsonKey(name: 'region_name')
  final String? regionName;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'icon_set')
  final String? iconSet;
  @override
  @JsonKey(name: 'ride_type')
  final int? rideType;
  @override
  @JsonKey(name: 'max_people')
  final int? maxPeople;
  @override
  @JsonKey(name: 'region_fare')
  final VehicleFare? regionFare;
  @override
  final VehicleImage? images;
  @override
  final String? vehicleNumber;

  @override
  String toString() {
    return 'Vehicle(regionId: $regionId, operatorId: $operatorId, regionName: $regionName, vehicleType: $vehicleType, iconSet: $iconSet, rideType: $rideType, maxPeople: $maxPeople, regionFare: $regionFare, images: $images, vehicleNumber: $vehicleNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vehicle &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)) &&
            (identical(other.operatorId, operatorId) ||
                const DeepCollectionEquality()
                    .equals(other.operatorId, operatorId)) &&
            (identical(other.regionName, regionName) ||
                const DeepCollectionEquality()
                    .equals(other.regionName, regionName)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.iconSet, iconSet) ||
                const DeepCollectionEquality()
                    .equals(other.iconSet, iconSet)) &&
            (identical(other.rideType, rideType) ||
                const DeepCollectionEquality()
                    .equals(other.rideType, rideType)) &&
            (identical(other.maxPeople, maxPeople) ||
                const DeepCollectionEquality()
                    .equals(other.maxPeople, maxPeople)) &&
            (identical(other.regionFare, regionFare) ||
                const DeepCollectionEquality()
                    .equals(other.regionFare, regionFare)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNumber, vehicleNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(regionId) ^
      const DeepCollectionEquality().hash(operatorId) ^
      const DeepCollectionEquality().hash(regionName) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(iconSet) ^
      const DeepCollectionEquality().hash(rideType) ^
      const DeepCollectionEquality().hash(maxPeople) ^
      const DeepCollectionEquality().hash(regionFare) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(vehicleNumber);

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
  factory _Vehicle(
      {@JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare,
      VehicleImage? images,
      String? vehicleNumber}) = _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  @JsonKey(name: 'region_id')
  int? get regionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'operator_id')
  int? get operatorId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'region_name')
  String? get regionName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'icon_set')
  String? get iconSet => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'max_people')
  int? get maxPeople => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'region_fare')
  VehicleFare? get regionFare => throw _privateConstructorUsedError;
  @override
  VehicleImage? get images => throw _privateConstructorUsedError;
  @override
  String? get vehicleNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VehicleCopyWith<_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleFare _$VehicleFareFromJson(Map<String, dynamic> json) {
  return _VehicleFare.fromJson(json);
}

/// @nodoc
class _$VehicleFareTearOff {
  const _$VehicleFareTearOff();

  _VehicleFare call(
      {int? fare,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit}) {
    return _VehicleFare(
      fare: fare,
      minFare: minFare,
      maxFare: maxFare,
      originalFare: originalFare,
      rideDistance: rideDistance,
      currency: currency,
      currencySymbol: currencySymbol,
      fareText: fareText,
      distanceUnit: distanceUnit,
    );
  }

  VehicleFare fromJson(Map<String, Object> json) {
    return VehicleFare.fromJson(json);
  }
}

/// @nodoc
const $VehicleFare = _$VehicleFareTearOff();

/// @nodoc
mixin _$VehicleFare {
  int? get fare => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_fare')
  int? get minFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_fare')
  int? get maxFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_fare')
  int? get originalFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_distance')
  double? get rideDistance => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_text')
  String? get fareText => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleFareCopyWith<VehicleFare> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleFareCopyWith<$Res> {
  factory $VehicleFareCopyWith(
          VehicleFare value, $Res Function(VehicleFare) then) =
      _$VehicleFareCopyWithImpl<$Res>;
  $Res call(
      {int? fare,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit});
}

/// @nodoc
class _$VehicleFareCopyWithImpl<$Res> implements $VehicleFareCopyWith<$Res> {
  _$VehicleFareCopyWithImpl(this._value, this._then);

  final VehicleFare _value;
  // ignore: unused_field
  final $Res Function(VehicleFare) _then;

  @override
  $Res call({
    Object? fare = freezed,
    Object? minFare = freezed,
    Object? maxFare = freezed,
    Object? originalFare = freezed,
    Object? rideDistance = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? fareText = freezed,
    Object? distanceUnit = freezed,
  }) {
    return _then(_value.copyWith(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      minFare: minFare == freezed
          ? _value.minFare
          : minFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxFare: maxFare == freezed
          ? _value.maxFare
          : maxFare // ignore: cast_nullable_to_non_nullable
              as int?,
      originalFare: originalFare == freezed
          ? _value.originalFare
          : originalFare // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDistance: rideDistance == freezed
          ? _value.rideDistance
          : rideDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      fareText: fareText == freezed
          ? _value.fareText
          : fareText // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VehicleFareCopyWith<$Res>
    implements $VehicleFareCopyWith<$Res> {
  factory _$VehicleFareCopyWith(
          _VehicleFare value, $Res Function(_VehicleFare) then) =
      __$VehicleFareCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? fare,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit});
}

/// @nodoc
class __$VehicleFareCopyWithImpl<$Res> extends _$VehicleFareCopyWithImpl<$Res>
    implements _$VehicleFareCopyWith<$Res> {
  __$VehicleFareCopyWithImpl(
      _VehicleFare _value, $Res Function(_VehicleFare) _then)
      : super(_value, (v) => _then(v as _VehicleFare));

  @override
  _VehicleFare get _value => super._value as _VehicleFare;

  @override
  $Res call({
    Object? fare = freezed,
    Object? minFare = freezed,
    Object? maxFare = freezed,
    Object? originalFare = freezed,
    Object? rideDistance = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? fareText = freezed,
    Object? distanceUnit = freezed,
  }) {
    return _then(_VehicleFare(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      minFare: minFare == freezed
          ? _value.minFare
          : minFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxFare: maxFare == freezed
          ? _value.maxFare
          : maxFare // ignore: cast_nullable_to_non_nullable
              as int?,
      originalFare: originalFare == freezed
          ? _value.originalFare
          : originalFare // ignore: cast_nullable_to_non_nullable
              as int?,
      rideDistance: rideDistance == freezed
          ? _value.rideDistance
          : rideDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: currencySymbol == freezed
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      fareText: fareText == freezed
          ? _value.fareText
          : fareText // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleFare implements _VehicleFare {
  _$_VehicleFare(
      {this.fare,
      @JsonKey(name: 'min_fare') this.minFare,
      @JsonKey(name: 'max_fare') this.maxFare,
      @JsonKey(name: 'original_fare') this.originalFare,
      @JsonKey(name: 'ride_distance') this.rideDistance,
      this.currency,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'fare_text') this.fareText,
      @JsonKey(name: 'distance_unit') this.distanceUnit});

  factory _$_VehicleFare.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFareFromJson(json);

  @override
  final int? fare;
  @override
  @JsonKey(name: 'min_fare')
  final int? minFare;
  @override
  @JsonKey(name: 'max_fare')
  final int? maxFare;
  @override
  @JsonKey(name: 'original_fare')
  final int? originalFare;
  @override
  @JsonKey(name: 'ride_distance')
  final double? rideDistance;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'currency_symbol')
  final String? currencySymbol;
  @override
  @JsonKey(name: 'fare_text')
  final String? fareText;
  @override
  @JsonKey(name: 'distance_unit')
  final String? distanceUnit;

  @override
  String toString() {
    return 'VehicleFare(fare: $fare, minFare: $minFare, maxFare: $maxFare, originalFare: $originalFare, rideDistance: $rideDistance, currency: $currency, currencySymbol: $currencySymbol, fareText: $fareText, distanceUnit: $distanceUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleFare &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.minFare, minFare) ||
                const DeepCollectionEquality()
                    .equals(other.minFare, minFare)) &&
            (identical(other.maxFare, maxFare) ||
                const DeepCollectionEquality()
                    .equals(other.maxFare, maxFare)) &&
            (identical(other.originalFare, originalFare) ||
                const DeepCollectionEquality()
                    .equals(other.originalFare, originalFare)) &&
            (identical(other.rideDistance, rideDistance) ||
                const DeepCollectionEquality()
                    .equals(other.rideDistance, rideDistance)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality()
                    .equals(other.currencySymbol, currencySymbol)) &&
            (identical(other.fareText, fareText) ||
                const DeepCollectionEquality()
                    .equals(other.fareText, fareText)) &&
            (identical(other.distanceUnit, distanceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.distanceUnit, distanceUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(minFare) ^
      const DeepCollectionEquality().hash(maxFare) ^
      const DeepCollectionEquality().hash(originalFare) ^
      const DeepCollectionEquality().hash(rideDistance) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(fareText) ^
      const DeepCollectionEquality().hash(distanceUnit);

  @JsonKey(ignore: true)
  @override
  _$VehicleFareCopyWith<_VehicleFare> get copyWith =>
      __$VehicleFareCopyWithImpl<_VehicleFare>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicleFareToJson(this);
  }
}

abstract class _VehicleFare implements VehicleFare {
  factory _VehicleFare(
      {int? fare,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit}) = _$_VehicleFare;

  factory _VehicleFare.fromJson(Map<String, dynamic> json) =
      _$_VehicleFare.fromJson;

  @override
  int? get fare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'min_fare')
  int? get minFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'max_fare')
  int? get maxFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_fare')
  int? get originalFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_distance')
  double? get rideDistance => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency_symbol')
  String? get currencySymbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_text')
  String? get fareText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VehicleFareCopyWith<_VehicleFare> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleImage _$VehicleImageFromJson(Map<String, dynamic> json) {
  return _VehicleImage.fromJson(json);
}

/// @nodoc
class _$VehicleImageTearOff {
  const _$VehicleImageTearOff();

  _VehicleImage call(
      {@JsonKey(name: 'tab_normal') String? tabNormal,
      @JsonKey(name: 'tab_highlighted') String? tabHighlighted,
      @JsonKey(name: 'ride_now_normal') String? rideNowNormal,
      @JsonKey(name: 'driver_icon') String? driverIcon}) {
    return _VehicleImage(
      tabNormal: tabNormal,
      tabHighlighted: tabHighlighted,
      rideNowNormal: rideNowNormal,
      driverIcon: driverIcon,
    );
  }

  VehicleImage fromJson(Map<String, Object> json) {
    return VehicleImage.fromJson(json);
  }
}

/// @nodoc
const $VehicleImage = _$VehicleImageTearOff();

/// @nodoc
mixin _$VehicleImage {
  @JsonKey(name: 'tab_normal')
  String? get tabNormal => throw _privateConstructorUsedError;
  @JsonKey(name: 'tab_highlighted')
  String? get tabHighlighted => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_now_normal')
  String? get rideNowNormal => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_icon')
  String? get driverIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleImageCopyWith<VehicleImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleImageCopyWith<$Res> {
  factory $VehicleImageCopyWith(
          VehicleImage value, $Res Function(VehicleImage) then) =
      _$VehicleImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'tab_normal') String? tabNormal,
      @JsonKey(name: 'tab_highlighted') String? tabHighlighted,
      @JsonKey(name: 'ride_now_normal') String? rideNowNormal,
      @JsonKey(name: 'driver_icon') String? driverIcon});
}

/// @nodoc
class _$VehicleImageCopyWithImpl<$Res> implements $VehicleImageCopyWith<$Res> {
  _$VehicleImageCopyWithImpl(this._value, this._then);

  final VehicleImage _value;
  // ignore: unused_field
  final $Res Function(VehicleImage) _then;

  @override
  $Res call({
    Object? tabNormal = freezed,
    Object? tabHighlighted = freezed,
    Object? rideNowNormal = freezed,
    Object? driverIcon = freezed,
  }) {
    return _then(_value.copyWith(
      tabNormal: tabNormal == freezed
          ? _value.tabNormal
          : tabNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      tabHighlighted: tabHighlighted == freezed
          ? _value.tabHighlighted
          : tabHighlighted // ignore: cast_nullable_to_non_nullable
              as String?,
      rideNowNormal: rideNowNormal == freezed
          ? _value.rideNowNormal
          : rideNowNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      driverIcon: driverIcon == freezed
          ? _value.driverIcon
          : driverIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VehicleImageCopyWith<$Res>
    implements $VehicleImageCopyWith<$Res> {
  factory _$VehicleImageCopyWith(
          _VehicleImage value, $Res Function(_VehicleImage) then) =
      __$VehicleImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'tab_normal') String? tabNormal,
      @JsonKey(name: 'tab_highlighted') String? tabHighlighted,
      @JsonKey(name: 'ride_now_normal') String? rideNowNormal,
      @JsonKey(name: 'driver_icon') String? driverIcon});
}

/// @nodoc
class __$VehicleImageCopyWithImpl<$Res> extends _$VehicleImageCopyWithImpl<$Res>
    implements _$VehicleImageCopyWith<$Res> {
  __$VehicleImageCopyWithImpl(
      _VehicleImage _value, $Res Function(_VehicleImage) _then)
      : super(_value, (v) => _then(v as _VehicleImage));

  @override
  _VehicleImage get _value => super._value as _VehicleImage;

  @override
  $Res call({
    Object? tabNormal = freezed,
    Object? tabHighlighted = freezed,
    Object? rideNowNormal = freezed,
    Object? driverIcon = freezed,
  }) {
    return _then(_VehicleImage(
      tabNormal: tabNormal == freezed
          ? _value.tabNormal
          : tabNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      tabHighlighted: tabHighlighted == freezed
          ? _value.tabHighlighted
          : tabHighlighted // ignore: cast_nullable_to_non_nullable
              as String?,
      rideNowNormal: rideNowNormal == freezed
          ? _value.rideNowNormal
          : rideNowNormal // ignore: cast_nullable_to_non_nullable
              as String?,
      driverIcon: driverIcon == freezed
          ? _value.driverIcon
          : driverIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleImage implements _VehicleImage {
  _$_VehicleImage(
      {@JsonKey(name: 'tab_normal') this.tabNormal,
      @JsonKey(name: 'tab_highlighted') this.tabHighlighted,
      @JsonKey(name: 'ride_now_normal') this.rideNowNormal,
      @JsonKey(name: 'driver_icon') this.driverIcon});

  factory _$_VehicleImage.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleImageFromJson(json);

  @override
  @JsonKey(name: 'tab_normal')
  final String? tabNormal;
  @override
  @JsonKey(name: 'tab_highlighted')
  final String? tabHighlighted;
  @override
  @JsonKey(name: 'ride_now_normal')
  final String? rideNowNormal;
  @override
  @JsonKey(name: 'driver_icon')
  final String? driverIcon;

  @override
  String toString() {
    return 'VehicleImage(tabNormal: $tabNormal, tabHighlighted: $tabHighlighted, rideNowNormal: $rideNowNormal, driverIcon: $driverIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleImage &&
            (identical(other.tabNormal, tabNormal) ||
                const DeepCollectionEquality()
                    .equals(other.tabNormal, tabNormal)) &&
            (identical(other.tabHighlighted, tabHighlighted) ||
                const DeepCollectionEquality()
                    .equals(other.tabHighlighted, tabHighlighted)) &&
            (identical(other.rideNowNormal, rideNowNormal) ||
                const DeepCollectionEquality()
                    .equals(other.rideNowNormal, rideNowNormal)) &&
            (identical(other.driverIcon, driverIcon) ||
                const DeepCollectionEquality()
                    .equals(other.driverIcon, driverIcon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tabNormal) ^
      const DeepCollectionEquality().hash(tabHighlighted) ^
      const DeepCollectionEquality().hash(rideNowNormal) ^
      const DeepCollectionEquality().hash(driverIcon);

  @JsonKey(ignore: true)
  @override
  _$VehicleImageCopyWith<_VehicleImage> get copyWith =>
      __$VehicleImageCopyWithImpl<_VehicleImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VehicleImageToJson(this);
  }
}

abstract class _VehicleImage implements VehicleImage {
  factory _VehicleImage(
      {@JsonKey(name: 'tab_normal') String? tabNormal,
      @JsonKey(name: 'tab_highlighted') String? tabHighlighted,
      @JsonKey(name: 'ride_now_normal') String? rideNowNormal,
      @JsonKey(name: 'driver_icon') String? driverIcon}) = _$_VehicleImage;

  factory _VehicleImage.fromJson(Map<String, dynamic> json) =
      _$_VehicleImage.fromJson;

  @override
  @JsonKey(name: 'tab_normal')
  String? get tabNormal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tab_highlighted')
  String? get tabHighlighted => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_now_normal')
  String? get rideNowNormal => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_icon')
  String? get driverIcon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VehicleImageCopyWith<_VehicleImage> get copyWith =>
      throw _privateConstructorUsedError;
}

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
class _$DriverTearOff {
  const _$DriverTearOff();

  _Driver call(
      {@JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      double? latitude,
      double? longitude,
      double? rating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo}) {
    return _Driver(
      driverId: driverId,
      userName: userName,
      phoneNo: phoneNo,
      latitude: latitude,
      longitude: longitude,
      rating: rating,
      cityId: cityId,
      driverImage: driverImage,
      vehicleNo: vehicleNo,
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
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_no')
  String? get vehicleNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      double? latitude,
      double? longitude,
      double? rating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? driverId = freezed,
    Object? userName = freezed,
    Object? phoneNo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rating = freezed,
    Object? cityId = freezed,
    Object? driverImage = freezed,
    Object? vehicleNo = freezed,
  }) {
    return _then(_value.copyWith(
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNo: vehicleNo == freezed
          ? _value.vehicleNo
          : vehicleNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DriverCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$DriverCopyWith(_Driver value, $Res Function(_Driver) then) =
      __$DriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      double? latitude,
      double? longitude,
      double? rating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo});
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
    Object? driverId = freezed,
    Object? userName = freezed,
    Object? phoneNo = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rating = freezed,
    Object? cityId = freezed,
    Object? driverImage = freezed,
    Object? vehicleNo = freezed,
  }) {
    return _then(_Driver(
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNo: vehicleNo == freezed
          ? _value.vehicleNo
          : vehicleNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  _$_Driver(
      {@JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'phone_no') this.phoneNo,
      this.latitude,
      this.longitude,
      this.rating,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'driver_image') this.driverImage,
      @JsonKey(name: 'vehicle_no') this.vehicleNo});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverFromJson(json);

  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? rating;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'driver_image')
  final String? driverImage;
  @override
  @JsonKey(name: 'vehicle_no')
  final String? vehicleNo;

  @override
  String toString() {
    return 'Driver(driverId: $driverId, userName: $userName, phoneNo: $phoneNo, latitude: $latitude, longitude: $longitude, rating: $rating, cityId: $cityId, driverImage: $driverImage, vehicleNo: $vehicleNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Driver &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNo, phoneNo)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.driverImage, driverImage) ||
                const DeepCollectionEquality()
                    .equals(other.driverImage, driverImage)) &&
            (identical(other.vehicleNo, vehicleNo) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNo, vehicleNo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(driverImage) ^
      const DeepCollectionEquality().hash(vehicleNo);

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
  factory _Driver(
      {@JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      double? latitude,
      double? longitude,
      double? rating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_no')
  String? get vehicleNo => throw _privateConstructorUsedError;
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

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
class _$CouponTearOff {
  const _$CouponTearOff();

  _Coupon call({String? name, int? point, DateTime? expireDate}) {
    return _Coupon(
      name: name,
      point: point,
      expireDate: expireDate,
    );
  }

  Coupon fromJson(Map<String, Object> json) {
    return Coupon.fromJson(json);
  }
}

/// @nodoc
const $Coupon = _$CouponTearOff();

/// @nodoc
mixin _$Coupon {
  String? get name => throw _privateConstructorUsedError;
  int? get point => throw _privateConstructorUsedError;
  DateTime? get expireDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res>;
  $Res call({String? name, int? point, DateTime? expireDate});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res> implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  final Coupon _value;
  // ignore: unused_field
  final $Res Function(Coupon) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? point = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) then) =
      __$CouponCopyWithImpl<$Res>;
  @override
  $Res call({String? name, int? point, DateTime? expireDate});
}

/// @nodoc
class __$CouponCopyWithImpl<$Res> extends _$CouponCopyWithImpl<$Res>
    implements _$CouponCopyWith<$Res> {
  __$CouponCopyWithImpl(_Coupon _value, $Res Function(_Coupon) _then)
      : super(_value, (v) => _then(v as _Coupon));

  @override
  _Coupon get _value => super._value as _Coupon;

  @override
  $Res call({
    Object? name = freezed,
    Object? point = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_Coupon(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  _$_Coupon({this.name, this.point, this.expireDate});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$_$_CouponFromJson(json);

  @override
  final String? name;
  @override
  final int? point;
  @override
  final DateTime? expireDate;

  @override
  String toString() {
    return 'Coupon(name: $name, point: $point, expireDate: $expireDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coupon &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(expireDate);

  @JsonKey(ignore: true)
  @override
  _$CouponCopyWith<_Coupon> get copyWith =>
      __$CouponCopyWithImpl<_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CouponToJson(this);
  }
}

abstract class _Coupon implements Coupon {
  factory _Coupon({String? name, int? point, DateTime? expireDate}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get point => throw _privateConstructorUsedError;
  @override
  DateTime? get expireDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CouponCopyWith<_Coupon> get copyWith => throw _privateConstructorUsedError;
}

NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) {
  return _NotificationMessage.fromJson(json);
}

/// @nodoc
class _$NotificationMessageTearOff {
  const _$NotificationMessageTearOff();

  _NotificationMessage call(int flag,
      {String? title,
      String? message,
      double? rating,
      String? fare,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_car_no') String? driverCarNo,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'title_ios') String? titleIos,
      @JsonKey(name: 'message_ios') String? messageIos,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'engagement_id') String? engagementId,
      @JsonKey(name: 'driver_car_image') String? driverCarImage,
      @JsonKey(name: 'to_pay') String? toPay,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'distance_travelled') String? distanceTravelled,
      @JsonKey(name: 'ride_time') String? rideTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet') String? paidUsingWallet,
      String? discount}) {
    return _NotificationMessage(
      flag,
      title: title,
      message: message,
      rating: rating,
      fare: fare,
      log: log,
      error: error,
      phoneNo: phoneNo,
      driverId: driverId,
      driverCarNo: driverCarNo,
      userImage: userImage,
      titleIos: titleIos,
      messageIos: messageIos,
      vehicleName: vehicleName,
      vehicleType: vehicleType,
      sessionId: sessionId,
      engagementId: engagementId,
      driverCarImage: driverCarImage,
      toPay: toPay,
      paymentMode: paymentMode,
      distanceTravelled: distanceTravelled,
      rideTime: rideTime,
      distanceUnit: distanceUnit,
      paidUsingWallet: paidUsingWallet,
      discount: discount,
    );
  }

  NotificationMessage fromJson(Map<String, Object> json) {
    return NotificationMessage.fromJson(json);
  }
}

/// @nodoc
const $NotificationMessage = _$NotificationMessageTearOff();

/// @nodoc
mixin _$NotificationMessage {
  int get flag => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get fare => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_car_no')
  String? get driverCarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ios')
  String? get titleIos => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_ios')
  String? get messageIos => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_id')
  String? get engagementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_car_image')
  String? get driverCarImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_pay')
  String? get toPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_mode')
  int? get paymentMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_travelled')
  String? get distanceTravelled => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_time')
  String? get rideTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'paid_using_wallet')
  String? get paidUsingWallet => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationMessageCopyWith<NotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationMessageCopyWith<$Res> {
  factory $NotificationMessageCopyWith(
          NotificationMessage value, $Res Function(NotificationMessage) then) =
      _$NotificationMessageCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? title,
      String? message,
      double? rating,
      String? fare,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_car_no') String? driverCarNo,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'title_ios') String? titleIos,
      @JsonKey(name: 'message_ios') String? messageIos,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'engagement_id') String? engagementId,
      @JsonKey(name: 'driver_car_image') String? driverCarImage,
      @JsonKey(name: 'to_pay') String? toPay,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'distance_travelled') String? distanceTravelled,
      @JsonKey(name: 'ride_time') String? rideTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet') String? paidUsingWallet,
      String? discount});
}

/// @nodoc
class _$NotificationMessageCopyWithImpl<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  _$NotificationMessageCopyWithImpl(this._value, this._then);

  final NotificationMessage _value;
  // ignore: unused_field
  final $Res Function(NotificationMessage) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? rating = freezed,
    Object? fare = freezed,
    Object? log = freezed,
    Object? error = freezed,
    Object? phoneNo = freezed,
    Object? driverId = freezed,
    Object? driverCarNo = freezed,
    Object? userImage = freezed,
    Object? titleIos = freezed,
    Object? messageIos = freezed,
    Object? vehicleName = freezed,
    Object? vehicleType = freezed,
    Object? sessionId = freezed,
    Object? engagementId = freezed,
    Object? driverCarImage = freezed,
    Object? toPay = freezed,
    Object? paymentMode = freezed,
    Object? distanceTravelled = freezed,
    Object? rideTime = freezed,
    Object? distanceUnit = freezed,
    Object? paidUsingWallet = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverCarNo: driverCarNo == freezed
          ? _value.driverCarNo
          : driverCarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      titleIos: titleIos == freezed
          ? _value.titleIos
          : titleIos // ignore: cast_nullable_to_non_nullable
              as String?,
      messageIos: messageIos == freezed
          ? _value.messageIos
          : messageIos // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverCarImage: driverCarImage == freezed
          ? _value.driverCarImage
          : driverCarImage // ignore: cast_nullable_to_non_nullable
              as String?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceTravelled: distanceTravelled == freezed
          ? _value.distanceTravelled
          : distanceTravelled // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      paidUsingWallet: paidUsingWallet == freezed
          ? _value.paidUsingWallet
          : paidUsingWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NotificationMessageCopyWith<$Res>
    implements $NotificationMessageCopyWith<$Res> {
  factory _$NotificationMessageCopyWith(_NotificationMessage value,
          $Res Function(_NotificationMessage) then) =
      __$NotificationMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? title,
      String? message,
      double? rating,
      String? fare,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_car_no') String? driverCarNo,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'title_ios') String? titleIos,
      @JsonKey(name: 'message_ios') String? messageIos,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'engagement_id') String? engagementId,
      @JsonKey(name: 'driver_car_image') String? driverCarImage,
      @JsonKey(name: 'to_pay') String? toPay,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'distance_travelled') String? distanceTravelled,
      @JsonKey(name: 'ride_time') String? rideTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet') String? paidUsingWallet,
      String? discount});
}

/// @nodoc
class __$NotificationMessageCopyWithImpl<$Res>
    extends _$NotificationMessageCopyWithImpl<$Res>
    implements _$NotificationMessageCopyWith<$Res> {
  __$NotificationMessageCopyWithImpl(
      _NotificationMessage _value, $Res Function(_NotificationMessage) _then)
      : super(_value, (v) => _then(v as _NotificationMessage));

  @override
  _NotificationMessage get _value => super._value as _NotificationMessage;

  @override
  $Res call({
    Object? flag = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? rating = freezed,
    Object? fare = freezed,
    Object? log = freezed,
    Object? error = freezed,
    Object? phoneNo = freezed,
    Object? driverId = freezed,
    Object? driverCarNo = freezed,
    Object? userImage = freezed,
    Object? titleIos = freezed,
    Object? messageIos = freezed,
    Object? vehicleName = freezed,
    Object? vehicleType = freezed,
    Object? sessionId = freezed,
    Object? engagementId = freezed,
    Object? driverCarImage = freezed,
    Object? toPay = freezed,
    Object? paymentMode = freezed,
    Object? distanceTravelled = freezed,
    Object? rideTime = freezed,
    Object? distanceUnit = freezed,
    Object? paidUsingWallet = freezed,
    Object? discount = freezed,
  }) {
    return _then(_NotificationMessage(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverCarNo: driverCarNo == freezed
          ? _value.driverCarNo
          : driverCarNo // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: userImage == freezed
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
      titleIos: titleIos == freezed
          ? _value.titleIos
          : titleIos // ignore: cast_nullable_to_non_nullable
              as String?,
      messageIos: messageIos == freezed
          ? _value.messageIos
          : messageIos // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as String?,
      driverCarImage: driverCarImage == freezed
          ? _value.driverCarImage
          : driverCarImage // ignore: cast_nullable_to_non_nullable
              as String?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceTravelled: distanceTravelled == freezed
          ? _value.distanceTravelled
          : distanceTravelled // ignore: cast_nullable_to_non_nullable
              as String?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      paidUsingWallet: paidUsingWallet == freezed
          ? _value.paidUsingWallet
          : paidUsingWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationMessage implements _NotificationMessage {
  _$_NotificationMessage(this.flag,
      {this.title,
      this.message,
      this.rating,
      this.fare,
      this.log,
      this.error,
      @JsonKey(name: 'phone_no') this.phoneNo,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'driver_car_no') this.driverCarNo,
      @JsonKey(name: 'user_image') this.userImage,
      @JsonKey(name: 'title_ios') this.titleIos,
      @JsonKey(name: 'message_ios') this.messageIos,
      @JsonKey(name: 'vehicle_name') this.vehicleName,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'engagement_id') this.engagementId,
      @JsonKey(name: 'driver_car_image') this.driverCarImage,
      @JsonKey(name: 'to_pay') this.toPay,
      @JsonKey(name: 'payment_mode') this.paymentMode,
      @JsonKey(name: 'distance_travelled') this.distanceTravelled,
      @JsonKey(name: 'ride_time') this.rideTime,
      @JsonKey(name: 'distance_unit') this.distanceUnit,
      @JsonKey(name: 'paid_using_wallet') this.paidUsingWallet,
      this.discount});

  factory _$_NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationMessageFromJson(json);

  @override
  final int flag;
  @override
  final String? title;
  @override
  final String? message;
  @override
  final double? rating;
  @override
  final String? fare;
  @override
  final String? log;
  @override
  final String? error;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'driver_car_no')
  final String? driverCarNo;
  @override
  @JsonKey(name: 'user_image')
  final String? userImage;
  @override
  @JsonKey(name: 'title_ios')
  final String? titleIos;
  @override
  @JsonKey(name: 'message_ios')
  final String? messageIos;
  @override
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'session_id')
  final int? sessionId;
  @override
  @JsonKey(name: 'engagement_id')
  final String? engagementId;
  @override
  @JsonKey(name: 'driver_car_image')
  final String? driverCarImage;
  @override
  @JsonKey(name: 'to_pay')
  final String? toPay;
  @override
  @JsonKey(name: 'payment_mode')
  final int? paymentMode;
  @override
  @JsonKey(name: 'distance_travelled')
  final String? distanceTravelled;
  @override
  @JsonKey(name: 'ride_time')
  final String? rideTime;
  @override
  @JsonKey(name: 'distance_unit')
  final String? distanceUnit;
  @override
  @JsonKey(name: 'paid_using_wallet')
  final String? paidUsingWallet;
  @override
  final String? discount;

  @override
  String toString() {
    return 'NotificationMessage(flag: $flag, title: $title, message: $message, rating: $rating, fare: $fare, log: $log, error: $error, phoneNo: $phoneNo, driverId: $driverId, driverCarNo: $driverCarNo, userImage: $userImage, titleIos: $titleIos, messageIos: $messageIos, vehicleName: $vehicleName, vehicleType: $vehicleType, sessionId: $sessionId, engagementId: $engagementId, driverCarImage: $driverCarImage, toPay: $toPay, paymentMode: $paymentMode, distanceTravelled: $distanceTravelled, rideTime: $rideTime, distanceUnit: $distanceUnit, paidUsingWallet: $paidUsingWallet, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationMessage &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.log, log) ||
                const DeepCollectionEquality().equals(other.log, log)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNo, phoneNo)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.driverCarNo, driverCarNo) ||
                const DeepCollectionEquality()
                    .equals(other.driverCarNo, driverCarNo)) &&
            (identical(other.userImage, userImage) ||
                const DeepCollectionEquality()
                    .equals(other.userImage, userImage)) &&
            (identical(other.titleIos, titleIos) ||
                const DeepCollectionEquality()
                    .equals(other.titleIos, titleIos)) &&
            (identical(other.messageIos, messageIos) ||
                const DeepCollectionEquality()
                    .equals(other.messageIos, messageIos)) &&
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleName, vehicleName)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.engagementId, engagementId) ||
                const DeepCollectionEquality()
                    .equals(other.engagementId, engagementId)) &&
            (identical(other.driverCarImage, driverCarImage) ||
                const DeepCollectionEquality()
                    .equals(other.driverCarImage, driverCarImage)) &&
            (identical(other.toPay, toPay) ||
                const DeepCollectionEquality().equals(other.toPay, toPay)) &&
            (identical(other.paymentMode, paymentMode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMode, paymentMode)) &&
            (identical(other.distanceTravelled, distanceTravelled) ||
                const DeepCollectionEquality()
                    .equals(other.distanceTravelled, distanceTravelled)) &&
            (identical(other.rideTime, rideTime) ||
                const DeepCollectionEquality()
                    .equals(other.rideTime, rideTime)) &&
            (identical(other.distanceUnit, distanceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.paidUsingWallet, paidUsingWallet) ||
                const DeepCollectionEquality()
                    .equals(other.paidUsingWallet, paidUsingWallet)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(driverCarNo) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(titleIos) ^
      const DeepCollectionEquality().hash(messageIos) ^
      const DeepCollectionEquality().hash(vehicleName) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(engagementId) ^
      const DeepCollectionEquality().hash(driverCarImage) ^
      const DeepCollectionEquality().hash(toPay) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(distanceTravelled) ^
      const DeepCollectionEquality().hash(rideTime) ^
      const DeepCollectionEquality().hash(distanceUnit) ^
      const DeepCollectionEquality().hash(paidUsingWallet) ^
      const DeepCollectionEquality().hash(discount);

  @JsonKey(ignore: true)
  @override
  _$NotificationMessageCopyWith<_NotificationMessage> get copyWith =>
      __$NotificationMessageCopyWithImpl<_NotificationMessage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationMessageToJson(this);
  }
}

abstract class _NotificationMessage implements NotificationMessage {
  factory _NotificationMessage(int flag,
      {String? title,
      String? message,
      double? rating,
      String? fare,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_car_no') String? driverCarNo,
      @JsonKey(name: 'user_image') String? userImage,
      @JsonKey(name: 'title_ios') String? titleIos,
      @JsonKey(name: 'message_ios') String? messageIos,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'engagement_id') String? engagementId,
      @JsonKey(name: 'driver_car_image') String? driverCarImage,
      @JsonKey(name: 'to_pay') String? toPay,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'distance_travelled') String? distanceTravelled,
      @JsonKey(name: 'ride_time') String? rideTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet') String? paidUsingWallet,
      String? discount}) = _$_NotificationMessage;

  factory _NotificationMessage.fromJson(Map<String, dynamic> json) =
      _$_NotificationMessage.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  String? get fare => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_car_no')
  String? get driverCarNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title_ios')
  String? get titleIos => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message_ios')
  String? get messageIos => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'engagement_id')
  String? get engagementId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_car_image')
  String? get driverCarImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to_pay')
  String? get toPay => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_mode')
  int? get paymentMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_travelled')
  String? get distanceTravelled => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_time')
  String? get rideTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'paid_using_wallet')
  String? get paidUsingWallet => throw _privateConstructorUsedError;
  @override
  String? get discount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationMessageCopyWith<_NotificationMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

RideDetail _$RideDetailFromJson(Map<String, dynamic> json) {
  return _RideDetail.fromJson(json);
}

/// @nodoc
class _$RideDetailTearOff {
  const _$RideDetailTearOff();

  _RideDetail call(
      {double? fare,
      int? paymentMode,
      double? distanceTraveled,
      double? discount,
      double? paidUsingWallet,
      int? rideTime,
      String? distanceUnit,
      double? toPay}) {
    return _RideDetail(
      fare: fare,
      paymentMode: paymentMode,
      distanceTraveled: distanceTraveled,
      discount: discount,
      paidUsingWallet: paidUsingWallet,
      rideTime: rideTime,
      distanceUnit: distanceUnit,
      toPay: toPay,
    );
  }

  RideDetail fromJson(Map<String, Object> json) {
    return RideDetail.fromJson(json);
  }
}

/// @nodoc
const $RideDetail = _$RideDetailTearOff();

/// @nodoc
mixin _$RideDetail {
  double? get fare => throw _privateConstructorUsedError;
  int? get paymentMode => throw _privateConstructorUsedError;
  double? get distanceTraveled => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get paidUsingWallet => throw _privateConstructorUsedError;
  int? get rideTime => throw _privateConstructorUsedError;
  String? get distanceUnit => throw _privateConstructorUsedError;
  double? get toPay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideDetailCopyWith<RideDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideDetailCopyWith<$Res> {
  factory $RideDetailCopyWith(
          RideDetail value, $Res Function(RideDetail) then) =
      _$RideDetailCopyWithImpl<$Res>;
  $Res call(
      {double? fare,
      int? paymentMode,
      double? distanceTraveled,
      double? discount,
      double? paidUsingWallet,
      int? rideTime,
      String? distanceUnit,
      double? toPay});
}

/// @nodoc
class _$RideDetailCopyWithImpl<$Res> implements $RideDetailCopyWith<$Res> {
  _$RideDetailCopyWithImpl(this._value, this._then);

  final RideDetail _value;
  // ignore: unused_field
  final $Res Function(RideDetail) _then;

  @override
  $Res call({
    Object? fare = freezed,
    Object? paymentMode = freezed,
    Object? distanceTraveled = freezed,
    Object? discount = freezed,
    Object? paidUsingWallet = freezed,
    Object? rideTime = freezed,
    Object? distanceUnit = freezed,
    Object? toPay = freezed,
  }) {
    return _then(_value.copyWith(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      paidUsingWallet: paidUsingWallet == freezed
          ? _value.paidUsingWallet
          : paidUsingWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RideDetailCopyWith<$Res> implements $RideDetailCopyWith<$Res> {
  factory _$RideDetailCopyWith(
          _RideDetail value, $Res Function(_RideDetail) then) =
      __$RideDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? fare,
      int? paymentMode,
      double? distanceTraveled,
      double? discount,
      double? paidUsingWallet,
      int? rideTime,
      String? distanceUnit,
      double? toPay});
}

/// @nodoc
class __$RideDetailCopyWithImpl<$Res> extends _$RideDetailCopyWithImpl<$Res>
    implements _$RideDetailCopyWith<$Res> {
  __$RideDetailCopyWithImpl(
      _RideDetail _value, $Res Function(_RideDetail) _then)
      : super(_value, (v) => _then(v as _RideDetail));

  @override
  _RideDetail get _value => super._value as _RideDetail;

  @override
  $Res call({
    Object? fare = freezed,
    Object? paymentMode = freezed,
    Object? distanceTraveled = freezed,
    Object? discount = freezed,
    Object? paidUsingWallet = freezed,
    Object? rideTime = freezed,
    Object? distanceUnit = freezed,
    Object? toPay = freezed,
  }) {
    return _then(_RideDetail(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceTraveled: distanceTraveled == freezed
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      paidUsingWallet: paidUsingWallet == freezed
          ? _value.paidUsingWallet
          : paidUsingWallet // ignore: cast_nullable_to_non_nullable
              as double?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideDetail implements _RideDetail {
  _$_RideDetail(
      {this.fare,
      this.paymentMode,
      this.distanceTraveled,
      this.discount,
      this.paidUsingWallet,
      this.rideTime,
      this.distanceUnit,
      this.toPay});

  factory _$_RideDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_RideDetailFromJson(json);

  @override
  final double? fare;
  @override
  final int? paymentMode;
  @override
  final double? distanceTraveled;
  @override
  final double? discount;
  @override
  final double? paidUsingWallet;
  @override
  final int? rideTime;
  @override
  final String? distanceUnit;
  @override
  final double? toPay;

  @override
  String toString() {
    return 'RideDetail(fare: $fare, paymentMode: $paymentMode, distanceTraveled: $distanceTraveled, discount: $discount, paidUsingWallet: $paidUsingWallet, rideTime: $rideTime, distanceUnit: $distanceUnit, toPay: $toPay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RideDetail &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.paymentMode, paymentMode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMode, paymentMode)) &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                const DeepCollectionEquality()
                    .equals(other.distanceTraveled, distanceTraveled)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.paidUsingWallet, paidUsingWallet) ||
                const DeepCollectionEquality()
                    .equals(other.paidUsingWallet, paidUsingWallet)) &&
            (identical(other.rideTime, rideTime) ||
                const DeepCollectionEquality()
                    .equals(other.rideTime, rideTime)) &&
            (identical(other.distanceUnit, distanceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.toPay, toPay) ||
                const DeepCollectionEquality().equals(other.toPay, toPay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(distanceTraveled) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(paidUsingWallet) ^
      const DeepCollectionEquality().hash(rideTime) ^
      const DeepCollectionEquality().hash(distanceUnit) ^
      const DeepCollectionEquality().hash(toPay);

  @JsonKey(ignore: true)
  @override
  _$RideDetailCopyWith<_RideDetail> get copyWith =>
      __$RideDetailCopyWithImpl<_RideDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RideDetailToJson(this);
  }
}

abstract class _RideDetail implements RideDetail {
  factory _RideDetail(
      {double? fare,
      int? paymentMode,
      double? distanceTraveled,
      double? discount,
      double? paidUsingWallet,
      int? rideTime,
      String? distanceUnit,
      double? toPay}) = _$_RideDetail;

  factory _RideDetail.fromJson(Map<String, dynamic> json) =
      _$_RideDetail.fromJson;

  @override
  double? get fare => throw _privateConstructorUsedError;
  @override
  int? get paymentMode => throw _privateConstructorUsedError;
  @override
  double? get distanceTraveled => throw _privateConstructorUsedError;
  @override
  double? get discount => throw _privateConstructorUsedError;
  @override
  double? get paidUsingWallet => throw _privateConstructorUsedError;
  @override
  int? get rideTime => throw _privateConstructorUsedError;
  @override
  String? get distanceUnit => throw _privateConstructorUsedError;
  @override
  double? get toPay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RideDetailCopyWith<_RideDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) {
  return _BasicResponse.fromJson(json);
}

/// @nodoc
class _$BasicResponseTearOff {
  const _$BasicResponseTearOff();

  _BasicResponse call(int flag, {String? message, String? error, String? log}) {
    return _BasicResponse(
      flag,
      message: message,
      error: error,
      log: log,
    );
  }

  BasicResponse fromJson(Map<String, Object> json) {
    return BasicResponse.fromJson(json);
  }
}

/// @nodoc
const $BasicResponse = _$BasicResponseTearOff();

/// @nodoc
mixin _$BasicResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicResponseCopyWith<BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicResponseCopyWith<$Res> {
  factory $BasicResponseCopyWith(
          BasicResponse value, $Res Function(BasicResponse) then) =
      _$BasicResponseCopyWithImpl<$Res>;
  $Res call({int flag, String? message, String? error, String? log});
}

/// @nodoc
class _$BasicResponseCopyWithImpl<$Res>
    implements $BasicResponseCopyWith<$Res> {
  _$BasicResponseCopyWithImpl(this._value, this._then);

  final BasicResponse _value;
  // ignore: unused_field
  final $Res Function(BasicResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BasicResponseCopyWith<$Res>
    implements $BasicResponseCopyWith<$Res> {
  factory _$BasicResponseCopyWith(
          _BasicResponse value, $Res Function(_BasicResponse) then) =
      __$BasicResponseCopyWithImpl<$Res>;
  @override
  $Res call({int flag, String? message, String? error, String? log});
}

/// @nodoc
class __$BasicResponseCopyWithImpl<$Res>
    extends _$BasicResponseCopyWithImpl<$Res>
    implements _$BasicResponseCopyWith<$Res> {
  __$BasicResponseCopyWithImpl(
      _BasicResponse _value, $Res Function(_BasicResponse) _then)
      : super(_value, (v) => _then(v as _BasicResponse));

  @override
  _BasicResponse get _value => super._value as _BasicResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
  }) {
    return _then(_BasicResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicResponse implements _BasicResponse {
  _$_BasicResponse(this.flag, {this.message, this.error, this.log});

  factory _$_BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BasicResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? log;

  @override
  String toString() {
    return 'BasicResponse(flag: $flag, message: $message, error: $error, log: $log)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BasicResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.log, log) ||
                const DeepCollectionEquality().equals(other.log, log)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(log);

  @JsonKey(ignore: true)
  @override
  _$BasicResponseCopyWith<_BasicResponse> get copyWith =>
      __$BasicResponseCopyWithImpl<_BasicResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BasicResponseToJson(this);
  }
}

abstract class _BasicResponse implements BasicResponse {
  factory _BasicResponse(int flag,
      {String? message, String? error, String? log}) = _$_BasicResponse;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$_BasicResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BasicResponseCopyWith<_BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
class _$SignUpResponseTearOff {
  const _$SignUpResponseTearOff();

  _SignUpResponse call(int flag,
      {String? message, @JsonKey(name: 'otp_length') int? otpLength}) {
    return _SignUpResponse(
      flag,
      message: message,
      otpLength: otpLength,
    );
  }

  SignUpResponse fromJson(Map<String, Object> json) {
    return SignUpResponse.fromJson(json);
  }
}

/// @nodoc
const $SignUpResponse = _$SignUpResponseTearOff();

/// @nodoc
mixin _$SignUpResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp_length')
  int? get otpLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag, String? message, @JsonKey(name: 'otp_length') int? otpLength});
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  final SignUpResponse _value;
  // ignore: unused_field
  final $Res Function(SignUpResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? otpLength = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpLength: otpLength == freezed
          ? _value.otpLength
          : otpLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SignUpResponseCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(
          _SignUpResponse value, $Res Function(_SignUpResponse) then) =
      __$SignUpResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag, String? message, @JsonKey(name: 'otp_length') int? otpLength});
}

/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(
      _SignUpResponse _value, $Res Function(_SignUpResponse) _then)
      : super(_value, (v) => _then(v as _SignUpResponse));

  @override
  _SignUpResponse get _value => super._value as _SignUpResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? otpLength = freezed,
  }) {
    return _then(_SignUpResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      otpLength: otpLength == freezed
          ? _value.otpLength
          : otpLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponse implements _SignUpResponse {
  _$_SignUpResponse(this.flag,
      {this.message, @JsonKey(name: 'otp_length') this.otpLength});

  factory _$_SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SignUpResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  @JsonKey(name: 'otp_length')
  final int? otpLength;

  @override
  String toString() {
    return 'SignUpResponse(flag: $flag, message: $message, otpLength: $otpLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.otpLength, otpLength) ||
                const DeepCollectionEquality()
                    .equals(other.otpLength, otpLength)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(otpLength);

  @JsonKey(ignore: true)
  @override
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignUpResponseToJson(this);
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  factory _SignUpResponse(int flag,
      {String? message,
      @JsonKey(name: 'otp_length') int? otpLength}) = _$_SignUpResponse;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'otp_length')
  int? get otpLength => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpResponseCopyWith<_SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyResponse _$VerifyResponseFromJson(Map<String, dynamic> json) {
  return _VerifyResponse.fromJson(json);
}

/// @nodoc
class _$VerifyResponseTearOff {
  const _$VerifyResponseTearOff();

  _VerifyResponse call(int flag,
      {String? message, @JsonKey(name: 'user_data') User? userData}) {
    return _VerifyResponse(
      flag,
      message: message,
      userData: userData,
    );
  }

  VerifyResponse fromJson(Map<String, Object> json) {
    return VerifyResponse.fromJson(json);
  }
}

/// @nodoc
const $VerifyResponse = _$VerifyResponseTearOff();

/// @nodoc
mixin _$VerifyResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_data')
  User? get userData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyResponseCopyWith<VerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyResponseCopyWith<$Res> {
  factory $VerifyResponseCopyWith(
          VerifyResponse value, $Res Function(VerifyResponse) then) =
      _$VerifyResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag, String? message, @JsonKey(name: 'user_data') User? userData});

  $UserCopyWith<$Res>? get userData;
}

/// @nodoc
class _$VerifyResponseCopyWithImpl<$Res>
    implements $VerifyResponseCopyWith<$Res> {
  _$VerifyResponseCopyWithImpl(this._value, this._then);

  final VerifyResponse _value;
  // ignore: unused_field
  final $Res Function(VerifyResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? userData = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc
abstract class _$VerifyResponseCopyWith<$Res>
    implements $VerifyResponseCopyWith<$Res> {
  factory _$VerifyResponseCopyWith(
          _VerifyResponse value, $Res Function(_VerifyResponse) then) =
      __$VerifyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag, String? message, @JsonKey(name: 'user_data') User? userData});

  @override
  $UserCopyWith<$Res>? get userData;
}

/// @nodoc
class __$VerifyResponseCopyWithImpl<$Res>
    extends _$VerifyResponseCopyWithImpl<$Res>
    implements _$VerifyResponseCopyWith<$Res> {
  __$VerifyResponseCopyWithImpl(
      _VerifyResponse _value, $Res Function(_VerifyResponse) _then)
      : super(_value, (v) => _then(v as _VerifyResponse));

  @override
  _VerifyResponse get _value => super._value as _VerifyResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? userData = freezed,
  }) {
    return _then(_VerifyResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyResponse implements _VerifyResponse {
  _$_VerifyResponse(this.flag,
      {this.message, @JsonKey(name: 'user_data') this.userData});

  factory _$_VerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_VerifyResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  @JsonKey(name: 'user_data')
  final User? userData;

  @override
  String toString() {
    return 'VerifyResponse(flag: $flag, message: $message, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(userData);

  @JsonKey(ignore: true)
  @override
  _$VerifyResponseCopyWith<_VerifyResponse> get copyWith =>
      __$VerifyResponseCopyWithImpl<_VerifyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VerifyResponseToJson(this);
  }
}

abstract class _VerifyResponse implements VerifyResponse {
  factory _VerifyResponse(int flag,
      {String? message,
      @JsonKey(name: 'user_data') User? userData}) = _$_VerifyResponse;

  factory _VerifyResponse.fromJson(Map<String, dynamic> json) =
      _$_VerifyResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_data')
  User? get userData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifyResponseCopyWith<_VerifyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

FindDriversResponse _$FindDriversResponseFromJson(Map<String, dynamic> json) {
  return _FindDriversResponse.fromJson(json);
}

/// @nodoc
class _$FindDriversResponseTearOff {
  const _$FindDriversResponseTearOff();

  _FindDriversResponse call(int flag,
      {String? error, List<Driver>? drivers, List<Vehicle>? regions}) {
    return _FindDriversResponse(
      flag,
      error: error,
      drivers: drivers,
      regions: regions,
    );
  }

  FindDriversResponse fromJson(Map<String, Object> json) {
    return FindDriversResponse.fromJson(json);
  }
}

/// @nodoc
const $FindDriversResponse = _$FindDriversResponseTearOff();

/// @nodoc
mixin _$FindDriversResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Driver>? get drivers => throw _privateConstructorUsedError;
  List<Vehicle>? get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindDriversResponseCopyWith<FindDriversResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindDriversResponseCopyWith<$Res> {
  factory $FindDriversResponseCopyWith(
          FindDriversResponse value, $Res Function(FindDriversResponse) then) =
      _$FindDriversResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag, String? error, List<Driver>? drivers, List<Vehicle>? regions});
}

/// @nodoc
class _$FindDriversResponseCopyWithImpl<$Res>
    implements $FindDriversResponseCopyWith<$Res> {
  _$FindDriversResponseCopyWithImpl(this._value, this._then);

  final FindDriversResponse _value;
  // ignore: unused_field
  final $Res Function(FindDriversResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? drivers = freezed,
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      drivers: drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
abstract class _$FindDriversResponseCopyWith<$Res>
    implements $FindDriversResponseCopyWith<$Res> {
  factory _$FindDriversResponseCopyWith(_FindDriversResponse value,
          $Res Function(_FindDriversResponse) then) =
      __$FindDriversResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag, String? error, List<Driver>? drivers, List<Vehicle>? regions});
}

/// @nodoc
class __$FindDriversResponseCopyWithImpl<$Res>
    extends _$FindDriversResponseCopyWithImpl<$Res>
    implements _$FindDriversResponseCopyWith<$Res> {
  __$FindDriversResponseCopyWithImpl(
      _FindDriversResponse _value, $Res Function(_FindDriversResponse) _then)
      : super(_value, (v) => _then(v as _FindDriversResponse));

  @override
  _FindDriversResponse get _value => super._value as _FindDriversResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? drivers = freezed,
    Object? regions = freezed,
  }) {
    return _then(_FindDriversResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      drivers: drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindDriversResponse implements _FindDriversResponse {
  _$_FindDriversResponse(this.flag, {this.error, this.drivers, this.regions});

  factory _$_FindDriversResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FindDriversResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? error;
  @override
  final List<Driver>? drivers;
  @override
  final List<Vehicle>? regions;

  @override
  String toString() {
    return 'FindDriversResponse(flag: $flag, error: $error, drivers: $drivers, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindDriversResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.drivers, drivers) ||
                const DeepCollectionEquality()
                    .equals(other.drivers, drivers)) &&
            (identical(other.regions, regions) ||
                const DeepCollectionEquality().equals(other.regions, regions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(drivers) ^
      const DeepCollectionEquality().hash(regions);

  @JsonKey(ignore: true)
  @override
  _$FindDriversResponseCopyWith<_FindDriversResponse> get copyWith =>
      __$FindDriversResponseCopyWithImpl<_FindDriversResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FindDriversResponseToJson(this);
  }
}

abstract class _FindDriversResponse implements FindDriversResponse {
  factory _FindDriversResponse(int flag,
      {String? error,
      List<Driver>? drivers,
      List<Vehicle>? regions}) = _$_FindDriversResponse;

  factory _FindDriversResponse.fromJson(Map<String, dynamic> json) =
      _$_FindDriversResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<Driver>? get drivers => throw _privateConstructorUsedError;
  @override
  List<Vehicle>? get regions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindDriversResponseCopyWith<_FindDriversResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestRideResponse _$RequestRideResponseFromJson(Map<String, dynamic> json) {
  return _RequestRideResponse.fromJson(json);
}

/// @nodoc
class _$RequestRideResponseTearOff {
  const _$RequestRideResponseTearOff();

  _RequestRideResponse call(int flag,
      {String? error,
      String? message,
      String? log,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime,
      double? latitude,
      double? longitude}) {
    return _RequestRideResponse(
      flag,
      error: error,
      message: message,
      log: log,
      orderId: orderId,
      sessionId: sessionId,
      pickupLocationAddress: pickupLocationAddress,
      dropLocationAddress: dropLocationAddress,
      startTime: startTime,
      latitude: latitude,
      longitude: longitude,
    );
  }

  RequestRideResponse fromJson(Map<String, Object> json) {
    return RequestRideResponse.fromJson(json);
  }
}

/// @nodoc
const $RequestRideResponse = _$RequestRideResponseTearOff();

/// @nodoc
mixin _$RequestRideResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_location_address')
  String? get pickupLocationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_location_address')
  String? get dropLocationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestRideResponseCopyWith<RequestRideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRideResponseCopyWith<$Res> {
  factory $RequestRideResponseCopyWith(
          RequestRideResponse value, $Res Function(RequestRideResponse) then) =
      _$RequestRideResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? error,
      String? message,
      String? log,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$RequestRideResponseCopyWithImpl<$Res>
    implements $RequestRideResponseCopyWith<$Res> {
  _$RequestRideResponseCopyWithImpl(this._value, this._then);

  final RequestRideResponse _value;
  // ignore: unused_field
  final $Res Function(RequestRideResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? log = freezed,
    Object? orderId = freezed,
    Object? sessionId = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? startTime = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocationAddress: pickupLocationAddress == freezed
          ? _value.pickupLocationAddress
          : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationAddress: dropLocationAddress == freezed
          ? _value.dropLocationAddress
          : dropLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$RequestRideResponseCopyWith<$Res>
    implements $RequestRideResponseCopyWith<$Res> {
  factory _$RequestRideResponseCopyWith(_RequestRideResponse value,
          $Res Function(_RequestRideResponse) then) =
      __$RequestRideResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? error,
      String? message,
      String? log,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$RequestRideResponseCopyWithImpl<$Res>
    extends _$RequestRideResponseCopyWithImpl<$Res>
    implements _$RequestRideResponseCopyWith<$Res> {
  __$RequestRideResponseCopyWithImpl(
      _RequestRideResponse _value, $Res Function(_RequestRideResponse) _then)
      : super(_value, (v) => _then(v as _RequestRideResponse));

  @override
  _RequestRideResponse get _value => super._value as _RequestRideResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? log = freezed,
    Object? orderId = freezed,
    Object? sessionId = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? startTime = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_RequestRideResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      log: log == freezed
          ? _value.log
          : log // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocationAddress: pickupLocationAddress == freezed
          ? _value.pickupLocationAddress
          : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationAddress: dropLocationAddress == freezed
          ? _value.dropLocationAddress
          : dropLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestRideResponse implements _RequestRideResponse {
  _$_RequestRideResponse(this.flag,
      {this.error,
      this.message,
      this.log,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'pickup_location_address') this.pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') this.dropLocationAddress,
      @JsonKey(name: 'start_time') this.startTime,
      this.latitude,
      this.longitude});

  factory _$_RequestRideResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestRideResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? error;
  @override
  final String? message;
  @override
  final String? log;
  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'session_id')
  final int? sessionId;
  @override
  @JsonKey(name: 'pickup_location_address')
  final String? pickupLocationAddress;
  @override
  @JsonKey(name: 'drop_location_address')
  final String? dropLocationAddress;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'RequestRideResponse(flag: $flag, error: $error, message: $message, log: $log, orderId: $orderId, sessionId: $sessionId, pickupLocationAddress: $pickupLocationAddress, dropLocationAddress: $dropLocationAddress, startTime: $startTime, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestRideResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.log, log) ||
                const DeepCollectionEquality().equals(other.log, log)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.pickupLocationAddress, pickupLocationAddress) ||
                const DeepCollectionEquality().equals(
                    other.pickupLocationAddress, pickupLocationAddress)) &&
            (identical(other.dropLocationAddress, dropLocationAddress) ||
                const DeepCollectionEquality()
                    .equals(other.dropLocationAddress, dropLocationAddress)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(pickupLocationAddress) ^
      const DeepCollectionEquality().hash(dropLocationAddress) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$RequestRideResponseCopyWith<_RequestRideResponse> get copyWith =>
      __$RequestRideResponseCopyWithImpl<_RequestRideResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestRideResponseToJson(this);
  }
}

abstract class _RequestRideResponse implements RequestRideResponse {
  factory _RequestRideResponse(int flag,
      {String? error,
      String? message,
      String? log,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime,
      double? latitude,
      double? longitude}) = _$_RequestRideResponse;

  factory _RequestRideResponse.fromJson(Map<String, dynamic> json) =
      _$_RequestRideResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'session_id')
  int? get sessionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_location_address')
  String? get pickupLocationAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_location_address')
  String? get dropLocationAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestRideResponseCopyWith<_RequestRideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
