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
      {@JsonKey(name: 'txn_id') int? transactionId,
      @JsonKey(name: 'txn_type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') String? loggedOn,
      @JsonKey(name: 'wallet_txn') int? walletTxn,
      @JsonKey(name: 'paytm') int? paytm,
      @JsonKey(name: 'mobikwik') int? mobikwik,
      @JsonKey(name: 'freecharge') int? freeCharge,
      @JsonKey(name: 'reference_id') int? referenceId,
      @JsonKey(name: 'event') int? event,
      @JsonKey(name: 'comment') String? comment}) {
    return _Transaction(
      transactionId: transactionId,
      type: type,
      amount: amount,
      transactionDate: transactionDate,
      transactionTime: transactionTime,
      loggedOn: loggedOn,
      walletTxn: walletTxn,
      paytm: paytm,
      mobikwik: mobikwik,
      freeCharge: freeCharge,
      referenceId: referenceId,
      event: event,
      comment: comment,
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
  @JsonKey(name: 'txn_id')
  int? get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'txn_type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'txn_date')
  String? get transactionDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'txn_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'logged_on')
  String? get loggedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_txn')
  int? get walletTxn => throw _privateConstructorUsedError;
  @JsonKey(name: 'paytm')
  int? get paytm => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobikwik')
  int? get mobikwik => throw _privateConstructorUsedError;
  @JsonKey(name: 'freecharge')
  int? get freeCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  int? get referenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'event')
  int? get event => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: 'txn_id') int? transactionId,
      @JsonKey(name: 'txn_type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') String? loggedOn,
      @JsonKey(name: 'wallet_txn') int? walletTxn,
      @JsonKey(name: 'paytm') int? paytm,
      @JsonKey(name: 'mobikwik') int? mobikwik,
      @JsonKey(name: 'freecharge') int? freeCharge,
      @JsonKey(name: 'reference_id') int? referenceId,
      @JsonKey(name: 'event') int? event,
      @JsonKey(name: 'comment') String? comment});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? transactionDate = freezed,
    Object? transactionTime = freezed,
    Object? loggedOn = freezed,
    Object? walletTxn = freezed,
    Object? paytm = freezed,
    Object? mobikwik = freezed,
    Object? freeCharge = freezed,
    Object? referenceId = freezed,
    Object? event = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      loggedOn: loggedOn == freezed
          ? _value.loggedOn
          : loggedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      walletTxn: walletTxn == freezed
          ? _value.walletTxn
          : walletTxn // ignore: cast_nullable_to_non_nullable
              as int?,
      paytm: paytm == freezed
          ? _value.paytm
          : paytm // ignore: cast_nullable_to_non_nullable
              as int?,
      mobikwik: mobikwik == freezed
          ? _value.mobikwik
          : mobikwik // ignore: cast_nullable_to_non_nullable
              as int?,
      freeCharge: freeCharge == freezed
          ? _value.freeCharge
          : freeCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      referenceId: referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int?,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@JsonKey(name: 'txn_id') int? transactionId,
      @JsonKey(name: 'txn_type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') String? loggedOn,
      @JsonKey(name: 'wallet_txn') int? walletTxn,
      @JsonKey(name: 'paytm') int? paytm,
      @JsonKey(name: 'mobikwik') int? mobikwik,
      @JsonKey(name: 'freecharge') int? freeCharge,
      @JsonKey(name: 'reference_id') int? referenceId,
      @JsonKey(name: 'event') int? event,
      @JsonKey(name: 'comment') String? comment});
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
    Object? transactionId = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? transactionDate = freezed,
    Object? transactionTime = freezed,
    Object? loggedOn = freezed,
    Object? walletTxn = freezed,
    Object? paytm = freezed,
    Object? mobikwik = freezed,
    Object? freeCharge = freezed,
    Object? referenceId = freezed,
    Object? event = freezed,
    Object? comment = freezed,
  }) {
    return _then(_Transaction(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionTime: transactionTime == freezed
          ? _value.transactionTime
          : transactionTime // ignore: cast_nullable_to_non_nullable
              as String?,
      loggedOn: loggedOn == freezed
          ? _value.loggedOn
          : loggedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      walletTxn: walletTxn == freezed
          ? _value.walletTxn
          : walletTxn // ignore: cast_nullable_to_non_nullable
              as int?,
      paytm: paytm == freezed
          ? _value.paytm
          : paytm // ignore: cast_nullable_to_non_nullable
              as int?,
      mobikwik: mobikwik == freezed
          ? _value.mobikwik
          : mobikwik // ignore: cast_nullable_to_non_nullable
              as int?,
      freeCharge: freeCharge == freezed
          ? _value.freeCharge
          : freeCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      referenceId: referenceId == freezed
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as int?,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction implements _Transaction {
  _$_Transaction(
      {@JsonKey(name: 'txn_id') this.transactionId,
      @JsonKey(name: 'txn_type') this.type,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'txn_date') this.transactionDate,
      @JsonKey(name: 'txn_time') this.transactionTime,
      @JsonKey(name: 'logged_on') this.loggedOn,
      @JsonKey(name: 'wallet_txn') this.walletTxn,
      @JsonKey(name: 'paytm') this.paytm,
      @JsonKey(name: 'mobikwik') this.mobikwik,
      @JsonKey(name: 'freecharge') this.freeCharge,
      @JsonKey(name: 'reference_id') this.referenceId,
      @JsonKey(name: 'event') this.event,
      @JsonKey(name: 'comment') this.comment});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionFromJson(json);

  @override
  @JsonKey(name: 'txn_id')
  final int? transactionId;
  @override
  @JsonKey(name: 'txn_type')
  final String? type;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'txn_date')
  final String? transactionDate;
  @override
  @JsonKey(name: 'txn_time')
  final String? transactionTime;
  @override
  @JsonKey(name: 'logged_on')
  final String? loggedOn;
  @override
  @JsonKey(name: 'wallet_txn')
  final int? walletTxn;
  @override
  @JsonKey(name: 'paytm')
  final int? paytm;
  @override
  @JsonKey(name: 'mobikwik')
  final int? mobikwik;
  @override
  @JsonKey(name: 'freecharge')
  final int? freeCharge;
  @override
  @JsonKey(name: 'reference_id')
  final int? referenceId;
  @override
  @JsonKey(name: 'event')
  final int? event;
  @override
  @JsonKey(name: 'comment')
  final String? comment;

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, type: $type, amount: $amount, transactionDate: $transactionDate, transactionTime: $transactionTime, loggedOn: $loggedOn, walletTxn: $walletTxn, paytm: $paytm, mobikwik: $mobikwik, freeCharge: $freeCharge, referenceId: $referenceId, event: $event, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.transactionTime, transactionTime) ||
                const DeepCollectionEquality()
                    .equals(other.transactionTime, transactionTime)) &&
            (identical(other.loggedOn, loggedOn) ||
                const DeepCollectionEquality()
                    .equals(other.loggedOn, loggedOn)) &&
            (identical(other.walletTxn, walletTxn) ||
                const DeepCollectionEquality()
                    .equals(other.walletTxn, walletTxn)) &&
            (identical(other.paytm, paytm) ||
                const DeepCollectionEquality().equals(other.paytm, paytm)) &&
            (identical(other.mobikwik, mobikwik) ||
                const DeepCollectionEquality()
                    .equals(other.mobikwik, mobikwik)) &&
            (identical(other.freeCharge, freeCharge) ||
                const DeepCollectionEquality()
                    .equals(other.freeCharge, freeCharge)) &&
            (identical(other.referenceId, referenceId) ||
                const DeepCollectionEquality()
                    .equals(other.referenceId, referenceId)) &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(transactionTime) ^
      const DeepCollectionEquality().hash(loggedOn) ^
      const DeepCollectionEquality().hash(walletTxn) ^
      const DeepCollectionEquality().hash(paytm) ^
      const DeepCollectionEquality().hash(mobikwik) ^
      const DeepCollectionEquality().hash(freeCharge) ^
      const DeepCollectionEquality().hash(referenceId) ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(comment);

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
      {@JsonKey(name: 'txn_id') int? transactionId,
      @JsonKey(name: 'txn_type') String? type,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') String? loggedOn,
      @JsonKey(name: 'wallet_txn') int? walletTxn,
      @JsonKey(name: 'paytm') int? paytm,
      @JsonKey(name: 'mobikwik') int? mobikwik,
      @JsonKey(name: 'freecharge') int? freeCharge,
      @JsonKey(name: 'reference_id') int? referenceId,
      @JsonKey(name: 'event') int? event,
      @JsonKey(name: 'comment') String? comment}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  @JsonKey(name: 'txn_id')
  int? get transactionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'txn_type')
  String? get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'txn_date')
  String? get transactionDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'txn_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logged_on')
  String? get loggedOn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wallet_txn')
  int? get walletTxn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'paytm')
  int? get paytm => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mobikwik')
  int? get mobikwik => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'freecharge')
  int? get freeCharge => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'reference_id')
  int? get referenceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'event')
  int? get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
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

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) {
  return _BasicResponse.fromJson(json);
}

/// @nodoc
class _$BasicResponseTearOff {
  const _$BasicResponseTearOff();

  _BasicResponse call(int flag, {String? message, String? error}) {
    return _BasicResponse(
      flag,
      message: message,
      error: error,
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
  $Res call({int flag, String? message, String? error});
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
  $Res call({int flag, String? message, String? error});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicResponse implements _BasicResponse {
  _$_BasicResponse(this.flag, {this.message, this.error});

  factory _$_BasicResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_BasicResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;

  @override
  String toString() {
    return 'BasicResponse(flag: $flag, message: $message, error: $error)';
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
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error);

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
  factory _BasicResponse(int flag, {String? message, String? error}) =
      _$_BasicResponse;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$_BasicResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
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

  _FindDriversResponse call(int flag, {List<Driver>? drivers}) {
    return _FindDriversResponse(
      flag,
      drivers: drivers,
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
  List<Driver>? get drivers => throw _privateConstructorUsedError;

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
  $Res call({int flag, List<Driver>? drivers});
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
    Object? drivers = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      drivers: drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
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
  $Res call({int flag, List<Driver>? drivers});
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
    Object? drivers = freezed,
  }) {
    return _then(_FindDriversResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      drivers: drivers == freezed
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindDriversResponse implements _FindDriversResponse {
  _$_FindDriversResponse(this.flag, {this.drivers});

  factory _$_FindDriversResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_FindDriversResponseFromJson(json);

  @override
  final int flag;
  @override
  final List<Driver>? drivers;

  @override
  String toString() {
    return 'FindDriversResponse(flag: $flag, drivers: $drivers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindDriversResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.drivers, drivers) ||
                const DeepCollectionEquality().equals(other.drivers, drivers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(drivers);

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
  factory _FindDriversResponse(int flag, {List<Driver>? drivers}) =
      _$_FindDriversResponse;

  factory _FindDriversResponse.fromJson(Map<String, dynamic> json) =
      _$_FindDriversResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  List<Driver>? get drivers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindDriversResponseCopyWith<_FindDriversResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WalletResponse _$WalletResponseFromJson(Map<String, dynamic> json) {
  return _WalletResponse.fromJson(json);
}

/// @nodoc
class _$WalletResponseTearOff {
  const _$WalletResponseTearOff();

  _WalletResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance}) {
    return _WalletResponse(
      flag,
      message: message,
      error: error,
      walletBalance: walletBalance,
    );
  }

  WalletResponse fromJson(Map<String, Object> json) {
    return WalletResponse.fromJson(json);
  }
}

/// @nodoc
const $WalletResponse = _$WalletResponseTearOff();

/// @nodoc
mixin _$WalletResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'jugnoo_balance')
  double? get walletBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletResponseCopyWith<WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletResponseCopyWith<$Res> {
  factory $WalletResponseCopyWith(
          WalletResponse value, $Res Function(WalletResponse) then) =
      _$WalletResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance});
}

/// @nodoc
class _$WalletResponseCopyWithImpl<$Res>
    implements $WalletResponseCopyWith<$Res> {
  _$WalletResponseCopyWithImpl(this._value, this._then);

  final WalletResponse _value;
  // ignore: unused_field
  final $Res Function(WalletResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? walletBalance = freezed,
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
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$WalletResponseCopyWith<$Res>
    implements $WalletResponseCopyWith<$Res> {
  factory _$WalletResponseCopyWith(
          _WalletResponse value, $Res Function(_WalletResponse) then) =
      __$WalletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance});
}

/// @nodoc
class __$WalletResponseCopyWithImpl<$Res>
    extends _$WalletResponseCopyWithImpl<$Res>
    implements _$WalletResponseCopyWith<$Res> {
  __$WalletResponseCopyWithImpl(
      _WalletResponse _value, $Res Function(_WalletResponse) _then)
      : super(_value, (v) => _then(v as _WalletResponse));

  @override
  _WalletResponse get _value => super._value as _WalletResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? walletBalance = freezed,
  }) {
    return _then(_WalletResponse(
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
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletResponse implements _WalletResponse {
  _$_WalletResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'jugnoo_balance') this.walletBalance});

  factory _$_WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'jugnoo_balance')
  final double? walletBalance;

  @override
  String toString() {
    return 'WalletResponse(flag: $flag, message: $message, error: $error, walletBalance: $walletBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.walletBalance, walletBalance) ||
                const DeepCollectionEquality()
                    .equals(other.walletBalance, walletBalance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(walletBalance);

  @JsonKey(ignore: true)
  @override
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      __$WalletResponseCopyWithImpl<_WalletResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletResponseToJson(this);
  }
}

abstract class _WalletResponse implements WalletResponse {
  factory _WalletResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'jugnoo_balance') double? walletBalance}) =
      _$_WalletResponse;

  factory _WalletResponse.fromJson(Map<String, dynamic> json) =
      _$_WalletResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'jugnoo_balance')
  double? get walletBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionHistoryResponse _$TransactionHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionHistoryResponse.fromJson(json);
}

/// @nodoc
class _$TransactionHistoryResponseTearOff {
  const _$TransactionHistoryResponseTearOff();

  _TransactionHistoryResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'transactions') List<Transaction>? transactions}) {
    return _TransactionHistoryResponse(
      flag,
      message: message,
      error: error,
      transactions: transactions,
    );
  }

  TransactionHistoryResponse fromJson(Map<String, Object> json) {
    return TransactionHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $TransactionHistoryResponse = _$TransactionHistoryResponseTearOff();

/// @nodoc
mixin _$TransactionHistoryResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactions')
  List<Transaction>? get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryResponseCopyWith<TransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryResponseCopyWith<$Res> {
  factory $TransactionHistoryResponseCopyWith(TransactionHistoryResponse value,
          $Res Function(TransactionHistoryResponse) then) =
      _$TransactionHistoryResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'transactions') List<Transaction>? transactions});
}

/// @nodoc
class _$TransactionHistoryResponseCopyWithImpl<$Res>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  _$TransactionHistoryResponseCopyWithImpl(this._value, this._then);

  final TransactionHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(TransactionHistoryResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? transactions = freezed,
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
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionHistoryResponseCopyWith<$Res>
    implements $TransactionHistoryResponseCopyWith<$Res> {
  factory _$TransactionHistoryResponseCopyWith(
          _TransactionHistoryResponse value,
          $Res Function(_TransactionHistoryResponse) then) =
      __$TransactionHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'transactions') List<Transaction>? transactions});
}

/// @nodoc
class __$TransactionHistoryResponseCopyWithImpl<$Res>
    extends _$TransactionHistoryResponseCopyWithImpl<$Res>
    implements _$TransactionHistoryResponseCopyWith<$Res> {
  __$TransactionHistoryResponseCopyWithImpl(_TransactionHistoryResponse _value,
      $Res Function(_TransactionHistoryResponse) _then)
      : super(_value, (v) => _then(v as _TransactionHistoryResponse));

  @override
  _TransactionHistoryResponse get _value =>
      super._value as _TransactionHistoryResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_TransactionHistoryResponse(
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
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionHistoryResponse implements _TransactionHistoryResponse {
  _$_TransactionHistoryResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'transactions') this.transactions});

  factory _$_TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TransactionHistoryResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'transactions')
  final List<Transaction>? transactions;

  @override
  String toString() {
    return 'TransactionHistoryResponse(flag: $flag, message: $message, error: $error, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionHistoryResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(transactions);

  @JsonKey(ignore: true)
  @override
  _$TransactionHistoryResponseCopyWith<_TransactionHistoryResponse>
      get copyWith => __$TransactionHistoryResponseCopyWithImpl<
          _TransactionHistoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransactionHistoryResponseToJson(this);
  }
}

abstract class _TransactionHistoryResponse
    implements TransactionHistoryResponse {
  factory _TransactionHistoryResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'transactions') List<Transaction>? transactions}) =
      _$_TransactionHistoryResponse;

  factory _TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionHistoryResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'transactions')
  List<Transaction>? get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionHistoryResponseCopyWith<_TransactionHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

TransferResponse _$TransferResponseFromJson(Map<String, dynamic> json) {
  return _TransferResponse.fromJson(json);
}

/// @nodoc
class _$TransferResponseTearOff {
  const _$TransferResponseTearOff();

  _TransferResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'credit_balance') double? walletBalance}) {
    return _TransferResponse(
      flag,
      message: message,
      error: error,
      walletBalance: walletBalance,
    );
  }

  TransferResponse fromJson(Map<String, Object> json) {
    return TransferResponse.fromJson(json);
  }
}

/// @nodoc
const $TransferResponse = _$TransferResponseTearOff();

/// @nodoc
mixin _$TransferResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_balance')
  double? get walletBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferResponseCopyWith<TransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferResponseCopyWith<$Res> {
  factory $TransferResponseCopyWith(
          TransferResponse value, $Res Function(TransferResponse) then) =
      _$TransferResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'credit_balance') double? walletBalance});
}

/// @nodoc
class _$TransferResponseCopyWithImpl<$Res>
    implements $TransferResponseCopyWith<$Res> {
  _$TransferResponseCopyWithImpl(this._value, this._then);

  final TransferResponse _value;
  // ignore: unused_field
  final $Res Function(TransferResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? walletBalance = freezed,
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
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$TransferResponseCopyWith<$Res>
    implements $TransferResponseCopyWith<$Res> {
  factory _$TransferResponseCopyWith(
          _TransferResponse value, $Res Function(_TransferResponse) then) =
      __$TransferResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'credit_balance') double? walletBalance});
}

/// @nodoc
class __$TransferResponseCopyWithImpl<$Res>
    extends _$TransferResponseCopyWithImpl<$Res>
    implements _$TransferResponseCopyWith<$Res> {
  __$TransferResponseCopyWithImpl(
      _TransferResponse _value, $Res Function(_TransferResponse) _then)
      : super(_value, (v) => _then(v as _TransferResponse));

  @override
  _TransferResponse get _value => super._value as _TransferResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? walletBalance = freezed,
  }) {
    return _then(_TransferResponse(
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
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransferResponse implements _TransferResponse {
  _$_TransferResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'credit_balance') this.walletBalance});

  factory _$_TransferResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TransferResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'credit_balance')
  final double? walletBalance;

  @override
  String toString() {
    return 'TransferResponse(flag: $flag, message: $message, error: $error, walletBalance: $walletBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransferResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.walletBalance, walletBalance) ||
                const DeepCollectionEquality()
                    .equals(other.walletBalance, walletBalance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(walletBalance);

  @JsonKey(ignore: true)
  @override
  _$TransferResponseCopyWith<_TransferResponse> get copyWith =>
      __$TransferResponseCopyWithImpl<_TransferResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TransferResponseToJson(this);
  }
}

abstract class _TransferResponse implements TransferResponse {
  factory _TransferResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'credit_balance') double? walletBalance}) =
      _$_TransferResponse;

  factory _TransferResponse.fromJson(Map<String, dynamic> json) =
      _$_TransferResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'credit_balance')
  double? get walletBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransferResponseCopyWith<_TransferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
