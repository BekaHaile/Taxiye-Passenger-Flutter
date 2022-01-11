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
      String? locale,
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
      @JsonKey(name: 'user_identifier')
          String? userIdentifier,
      @JsonKey(name: 'default_client_id')
          String? defaultClientId}) {
    return _User(
      userName,
      flag: flag,
      erorr: erorr,
      gender: gender,
      locale: locale,
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
      userIdentifier: userIdentifier,
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
  String? get locale => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'user_identifier')
  String? get userIdentifier => throw _privateConstructorUsedError;
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
      String? locale,
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
      @JsonKey(name: 'user_identifier')
          String? userIdentifier,
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
    Object? locale = freezed,
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
    Object? userIdentifier = freezed,
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
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
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
      userIdentifier: userIdentifier == freezed
          ? _value.userIdentifier
          : userIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? locale,
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
      @JsonKey(name: 'user_identifier')
          String? userIdentifier,
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
    Object? locale = freezed,
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
    Object? userIdentifier = freezed,
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
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
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
      userIdentifier: userIdentifier == freezed
          ? _value.userIdentifier
          : userIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.locale,
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
      @JsonKey(name: 'user_identifier')
          this.userIdentifier,
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
  final String? locale;
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
  @JsonKey(name: 'user_identifier')
  final String? userIdentifier;
  @override
  @JsonKey(name: 'default_client_id')
  final String? defaultClientId;

  @override
  String toString() {
    return 'User(userName: $userName, flag: $flag, erorr: $erorr, gender: $gender, locale: $locale, email: $email, userImage: $userImage, countryCode: $countryCode, phoneNo: $phoneNo, dateOfBirth: $dateOfBirth, authKey: $authKey, emailVerificationStatus: $emailVerificationStatus, operatorId: $operatorId, city: $city, cityId: $cityId, referralCode: $referralCode, userId: $userId, userIdentifier: $userIdentifier, defaultClientId: $defaultClientId)';
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
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
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
            (identical(other.userIdentifier, userIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.userIdentifier, userIdentifier)) &&
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
      const DeepCollectionEquality().hash(locale) ^
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
      const DeepCollectionEquality().hash(userIdentifier) ^
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
      String? locale,
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
      @JsonKey(name: 'user_identifier')
          String? userIdentifier,
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
  String? get locale => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'user_identifier')
  String? get userIdentifier => throw _privateConstructorUsedError;
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
      {VehicleImage? images,
      String? vehicleNumber,
      int? type,
      String? name,
      FareStructure? fareStructure,
      DeliveryCharge? deliveryCharge,
      bool? hasPromoCoupon,
      List<FareStructure>? packages,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare}) {
    return _Vehicle(
      images: images,
      vehicleNumber: vehicleNumber,
      type: type,
      name: name,
      fareStructure: fareStructure,
      deliveryCharge: deliveryCharge,
      hasPromoCoupon: hasPromoCoupon,
      packages: packages,
      regionId: regionId,
      operatorId: operatorId,
      regionName: regionName,
      vehicleType: vehicleType,
      iconSet: iconSet,
      rideType: rideType,
      maxPeople: maxPeople,
      regionFare: regionFare,
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
  VehicleImage? get images => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  FareStructure? get fareStructure => throw _privateConstructorUsedError;
  DeliveryCharge? get deliveryCharge => throw _privateConstructorUsedError;
  bool? get hasPromoCoupon => throw _privateConstructorUsedError;
  List<FareStructure>? get packages => throw _privateConstructorUsedError;
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res>;
  $Res call(
      {VehicleImage? images,
      String? vehicleNumber,
      int? type,
      String? name,
      FareStructure? fareStructure,
      DeliveryCharge? deliveryCharge,
      bool? hasPromoCoupon,
      List<FareStructure>? packages,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare});

  $VehicleImageCopyWith<$Res>? get images;
  $FareStructureCopyWith<$Res>? get fareStructure;
  $DeliveryChargeCopyWith<$Res>? get deliveryCharge;
  $VehicleFareCopyWith<$Res>? get regionFare;
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res> implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  final Vehicle _value;
  // ignore: unused_field
  final $Res Function(Vehicle) _then;

  @override
  $Res call({
    Object? images = freezed,
    Object? vehicleNumber = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? fareStructure = freezed,
    Object? deliveryCharge = freezed,
    Object? hasPromoCoupon = freezed,
    Object? packages = freezed,
    Object? regionId = freezed,
    Object? operatorId = freezed,
    Object? regionName = freezed,
    Object? vehicleType = freezed,
    Object? iconSet = freezed,
    Object? rideType = freezed,
    Object? maxPeople = freezed,
    Object? regionFare = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as VehicleImage?,
      vehicleNumber: vehicleNumber == freezed
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fareStructure: fareStructure == freezed
          ? _value.fareStructure
          : fareStructure // ignore: cast_nullable_to_non_nullable
              as FareStructure?,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as DeliveryCharge?,
      hasPromoCoupon: hasPromoCoupon == freezed
          ? _value.hasPromoCoupon
          : hasPromoCoupon // ignore: cast_nullable_to_non_nullable
              as bool?,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<FareStructure>?,
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
    ));
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

  @override
  $FareStructureCopyWith<$Res>? get fareStructure {
    if (_value.fareStructure == null) {
      return null;
    }

    return $FareStructureCopyWith<$Res>(_value.fareStructure!, (value) {
      return _then(_value.copyWith(fareStructure: value));
    });
  }

  @override
  $DeliveryChargeCopyWith<$Res>? get deliveryCharge {
    if (_value.deliveryCharge == null) {
      return null;
    }

    return $DeliveryChargeCopyWith<$Res>(_value.deliveryCharge!, (value) {
      return _then(_value.copyWith(deliveryCharge: value));
    });
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
}

/// @nodoc
abstract class _$VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$VehicleCopyWith(_Vehicle value, $Res Function(_Vehicle) then) =
      __$VehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {VehicleImage? images,
      String? vehicleNumber,
      int? type,
      String? name,
      FareStructure? fareStructure,
      DeliveryCharge? deliveryCharge,
      bool? hasPromoCoupon,
      List<FareStructure>? packages,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare});

  @override
  $VehicleImageCopyWith<$Res>? get images;
  @override
  $FareStructureCopyWith<$Res>? get fareStructure;
  @override
  $DeliveryChargeCopyWith<$Res>? get deliveryCharge;
  @override
  $VehicleFareCopyWith<$Res>? get regionFare;
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
    Object? images = freezed,
    Object? vehicleNumber = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? fareStructure = freezed,
    Object? deliveryCharge = freezed,
    Object? hasPromoCoupon = freezed,
    Object? packages = freezed,
    Object? regionId = freezed,
    Object? operatorId = freezed,
    Object? regionName = freezed,
    Object? vehicleType = freezed,
    Object? iconSet = freezed,
    Object? rideType = freezed,
    Object? maxPeople = freezed,
    Object? regionFare = freezed,
  }) {
    return _then(_Vehicle(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as VehicleImage?,
      vehicleNumber: vehicleNumber == freezed
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fareStructure: fareStructure == freezed
          ? _value.fareStructure
          : fareStructure // ignore: cast_nullable_to_non_nullable
              as FareStructure?,
      deliveryCharge: deliveryCharge == freezed
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as DeliveryCharge?,
      hasPromoCoupon: hasPromoCoupon == freezed
          ? _value.hasPromoCoupon
          : hasPromoCoupon // ignore: cast_nullable_to_non_nullable
              as bool?,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<FareStructure>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  _$_Vehicle(
      {this.images,
      this.vehicleNumber,
      this.type,
      this.name,
      this.fareStructure,
      this.deliveryCharge,
      this.hasPromoCoupon,
      this.packages,
      @JsonKey(name: 'region_id') this.regionId,
      @JsonKey(name: 'operator_id') this.operatorId,
      @JsonKey(name: 'region_name') this.regionName,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'icon_set') this.iconSet,
      @JsonKey(name: 'ride_type') this.rideType,
      @JsonKey(name: 'max_people') this.maxPeople,
      @JsonKey(name: 'region_fare') this.regionFare});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFromJson(json);

  @override
  final VehicleImage? images;
  @override
  final String? vehicleNumber;
  @override
  final int? type;
  @override
  final String? name;
  @override
  final FareStructure? fareStructure;
  @override
  final DeliveryCharge? deliveryCharge;
  @override
  final bool? hasPromoCoupon;
  @override
  final List<FareStructure>? packages;
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
  String toString() {
    return 'Vehicle(images: $images, vehicleNumber: $vehicleNumber, type: $type, name: $name, fareStructure: $fareStructure, deliveryCharge: $deliveryCharge, hasPromoCoupon: $hasPromoCoupon, packages: $packages, regionId: $regionId, operatorId: $operatorId, regionName: $regionName, vehicleType: $vehicleType, iconSet: $iconSet, rideType: $rideType, maxPeople: $maxPeople, regionFare: $regionFare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vehicle &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNumber, vehicleNumber)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.fareStructure, fareStructure) ||
                const DeepCollectionEquality()
                    .equals(other.fareStructure, fareStructure)) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCharge, deliveryCharge)) &&
            (identical(other.hasPromoCoupon, hasPromoCoupon) ||
                const DeepCollectionEquality()
                    .equals(other.hasPromoCoupon, hasPromoCoupon)) &&
            (identical(other.packages, packages) ||
                const DeepCollectionEquality()
                    .equals(other.packages, packages)) &&
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
                    .equals(other.regionFare, regionFare)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(vehicleNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(fareStructure) ^
      const DeepCollectionEquality().hash(deliveryCharge) ^
      const DeepCollectionEquality().hash(hasPromoCoupon) ^
      const DeepCollectionEquality().hash(packages) ^
      const DeepCollectionEquality().hash(regionId) ^
      const DeepCollectionEquality().hash(operatorId) ^
      const DeepCollectionEquality().hash(regionName) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(iconSet) ^
      const DeepCollectionEquality().hash(rideType) ^
      const DeepCollectionEquality().hash(maxPeople) ^
      const DeepCollectionEquality().hash(regionFare);

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
      {VehicleImage? images,
      String? vehicleNumber,
      int? type,
      String? name,
      FareStructure? fareStructure,
      DeliveryCharge? deliveryCharge,
      bool? hasPromoCoupon,
      List<FareStructure>? packages,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'operator_id') int? operatorId,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'icon_set') String? iconSet,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'max_people') int? maxPeople,
      @JsonKey(name: 'region_fare') VehicleFare? regionFare}) = _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  VehicleImage? get images => throw _privateConstructorUsedError;
  @override
  String? get vehicleNumber => throw _privateConstructorUsedError;
  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  FareStructure? get fareStructure => throw _privateConstructorUsedError;
  @override
  DeliveryCharge? get deliveryCharge => throw _privateConstructorUsedError;
  @override
  bool? get hasPromoCoupon => throw _privateConstructorUsedError;
  @override
  List<FareStructure>? get packages => throw _privateConstructorUsedError;
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
      {int? flag,
      int? fare,
      int? regionId,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit}) {
    return _VehicleFare(
      flag: flag,
      fare: fare,
      regionId: regionId,
      minFare: minFare,
      maxFare: maxFare,
      baseFare: baseFare,
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
  int? get flag => throw _privateConstructorUsedError;
  int? get fare => throw _privateConstructorUsedError;
  int? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_fare')
  int? get minFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_fare')
  int? get maxFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
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
      {int? flag,
      int? fare,
      int? regionId,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'base_fare') int? baseFare,
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
    Object? flag = freezed,
    Object? fare = freezed,
    Object? regionId = freezed,
    Object? minFare = freezed,
    Object? maxFare = freezed,
    Object? baseFare = freezed,
    Object? originalFare = freezed,
    Object? rideDistance = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? fareText = freezed,
    Object? distanceUnit = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      minFare: minFare == freezed
          ? _value.minFare
          : minFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxFare: maxFare == freezed
          ? _value.maxFare
          : maxFare // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFare: baseFare == freezed
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
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
      {int? flag,
      int? fare,
      int? regionId,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'base_fare') int? baseFare,
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
    Object? flag = freezed,
    Object? fare = freezed,
    Object? regionId = freezed,
    Object? minFare = freezed,
    Object? maxFare = freezed,
    Object? baseFare = freezed,
    Object? originalFare = freezed,
    Object? rideDistance = freezed,
    Object? currency = freezed,
    Object? currencySymbol = freezed,
    Object? fareText = freezed,
    Object? distanceUnit = freezed,
  }) {
    return _then(_VehicleFare(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      minFare: minFare == freezed
          ? _value.minFare
          : minFare // ignore: cast_nullable_to_non_nullable
              as int?,
      maxFare: maxFare == freezed
          ? _value.maxFare
          : maxFare // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFare: baseFare == freezed
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
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
      {this.flag,
      this.fare,
      this.regionId,
      @JsonKey(name: 'min_fare') this.minFare,
      @JsonKey(name: 'max_fare') this.maxFare,
      @JsonKey(name: 'base_fare') this.baseFare,
      @JsonKey(name: 'original_fare') this.originalFare,
      @JsonKey(name: 'ride_distance') this.rideDistance,
      this.currency,
      @JsonKey(name: 'currency_symbol') this.currencySymbol,
      @JsonKey(name: 'fare_text') this.fareText,
      @JsonKey(name: 'distance_unit') this.distanceUnit});

  factory _$_VehicleFare.fromJson(Map<String, dynamic> json) =>
      _$_$_VehicleFareFromJson(json);

  @override
  final int? flag;
  @override
  final int? fare;
  @override
  final int? regionId;
  @override
  @JsonKey(name: 'min_fare')
  final int? minFare;
  @override
  @JsonKey(name: 'max_fare')
  final int? maxFare;
  @override
  @JsonKey(name: 'base_fare')
  final int? baseFare;
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
    return 'VehicleFare(flag: $flag, fare: $fare, regionId: $regionId, minFare: $minFare, maxFare: $maxFare, baseFare: $baseFare, originalFare: $originalFare, rideDistance: $rideDistance, currency: $currency, currencySymbol: $currencySymbol, fareText: $fareText, distanceUnit: $distanceUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VehicleFare &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)) &&
            (identical(other.minFare, minFare) ||
                const DeepCollectionEquality()
                    .equals(other.minFare, minFare)) &&
            (identical(other.maxFare, maxFare) ||
                const DeepCollectionEquality()
                    .equals(other.maxFare, maxFare)) &&
            (identical(other.baseFare, baseFare) ||
                const DeepCollectionEquality()
                    .equals(other.baseFare, baseFare)) &&
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
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(regionId) ^
      const DeepCollectionEquality().hash(minFare) ^
      const DeepCollectionEquality().hash(maxFare) ^
      const DeepCollectionEquality().hash(baseFare) ^
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
      {int? flag,
      int? fare,
      int? regionId,
      @JsonKey(name: 'min_fare') int? minFare,
      @JsonKey(name: 'max_fare') int? maxFare,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'original_fare') int? originalFare,
      @JsonKey(name: 'ride_distance') double? rideDistance,
      String? currency,
      @JsonKey(name: 'currency_symbol') String? currencySymbol,
      @JsonKey(name: 'fare_text') String? fareText,
      @JsonKey(name: 'distance_unit') String? distanceUnit}) = _$_VehicleFare;

  factory _VehicleFare.fromJson(Map<String, dynamic> json) =
      _$_VehicleFare.fromJson;

  @override
  int? get flag => throw _privateConstructorUsedError;
  @override
  int? get fare => throw _privateConstructorUsedError;
  @override
  int? get regionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'min_fare')
  int? get minFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'max_fare')
  int? get maxFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
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

FareStructure _$FareStructureFromJson(Map<String, dynamic> json) {
  return _FareStructure.fromJson(json);
}

/// @nodoc
class _$FareStructureTearOff {
  const _$FareStructureTearOff();

  _FareStructure call(
      {int? fare,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'package_name') String? packageName,
      @JsonKey(name: 'fare_minimum') double? fareMinimum,
      @JsonKey(name: 'fare_fixed') double? fareFixed,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'fare_per_waiting_min') double? farePerWaitingMin,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'return_trip') int? returnTrip}) {
    return _FareStructure(
      fare: fare,
      packageId: packageId,
      packageName: packageName,
      fareMinimum: fareMinimum,
      fareFixed: fareFixed,
      farePerKm: farePerKm,
      farePerMin: farePerMin,
      farePerWaitingMin: farePerWaitingMin,
      vehicleType: vehicleType,
      rideType: rideType,
      regionId: regionId,
      returnTrip: returnTrip,
    );
  }

  FareStructure fromJson(Map<String, Object> json) {
    return FareStructure.fromJson(json);
  }
}

/// @nodoc
const $FareStructure = _$FareStructureTearOff();

/// @nodoc
mixin _$FareStructure {
  int? get fare => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_id')
  int? get packageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_name')
  String? get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_minimum')
  double? get fareMinimum => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_fixed')
  double? get fareFixed => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_per_km')
  double? get farePerKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_per_min')
  double? get farePerMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_per_waiting_min')
  double? get farePerWaitingMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  int? get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_trip')
  int? get returnTrip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FareStructureCopyWith<FareStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareStructureCopyWith<$Res> {
  factory $FareStructureCopyWith(
          FareStructure value, $Res Function(FareStructure) then) =
      _$FareStructureCopyWithImpl<$Res>;
  $Res call(
      {int? fare,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'package_name') String? packageName,
      @JsonKey(name: 'fare_minimum') double? fareMinimum,
      @JsonKey(name: 'fare_fixed') double? fareFixed,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'fare_per_waiting_min') double? farePerWaitingMin,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'return_trip') int? returnTrip});
}

/// @nodoc
class _$FareStructureCopyWithImpl<$Res>
    implements $FareStructureCopyWith<$Res> {
  _$FareStructureCopyWithImpl(this._value, this._then);

  final FareStructure _value;
  // ignore: unused_field
  final $Res Function(FareStructure) _then;

  @override
  $Res call({
    Object? fare = freezed,
    Object? packageId = freezed,
    Object? packageName = freezed,
    Object? fareMinimum = freezed,
    Object? fareFixed = freezed,
    Object? farePerKm = freezed,
    Object? farePerMin = freezed,
    Object? farePerWaitingMin = freezed,
    Object? vehicleType = freezed,
    Object? rideType = freezed,
    Object? regionId = freezed,
    Object? returnTrip = freezed,
  }) {
    return _then(_value.copyWith(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      fareMinimum: fareMinimum == freezed
          ? _value.fareMinimum
          : fareMinimum // ignore: cast_nullable_to_non_nullable
              as double?,
      fareFixed: fareFixed == freezed
          ? _value.fareFixed
          : fareFixed // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerKm: farePerKm == freezed
          ? _value.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerMin: farePerMin == freezed
          ? _value.farePerMin
          : farePerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerWaitingMin: farePerWaitingMin == freezed
          ? _value.farePerWaitingMin
          : farePerWaitingMin // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      returnTrip: returnTrip == freezed
          ? _value.returnTrip
          : returnTrip // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$FareStructureCopyWith<$Res>
    implements $FareStructureCopyWith<$Res> {
  factory _$FareStructureCopyWith(
          _FareStructure value, $Res Function(_FareStructure) then) =
      __$FareStructureCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? fare,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'package_name') String? packageName,
      @JsonKey(name: 'fare_minimum') double? fareMinimum,
      @JsonKey(name: 'fare_fixed') double? fareFixed,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'fare_per_waiting_min') double? farePerWaitingMin,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'return_trip') int? returnTrip});
}

/// @nodoc
class __$FareStructureCopyWithImpl<$Res>
    extends _$FareStructureCopyWithImpl<$Res>
    implements _$FareStructureCopyWith<$Res> {
  __$FareStructureCopyWithImpl(
      _FareStructure _value, $Res Function(_FareStructure) _then)
      : super(_value, (v) => _then(v as _FareStructure));

  @override
  _FareStructure get _value => super._value as _FareStructure;

  @override
  $Res call({
    Object? fare = freezed,
    Object? packageId = freezed,
    Object? packageName = freezed,
    Object? fareMinimum = freezed,
    Object? fareFixed = freezed,
    Object? farePerKm = freezed,
    Object? farePerMin = freezed,
    Object? farePerWaitingMin = freezed,
    Object? vehicleType = freezed,
    Object? rideType = freezed,
    Object? regionId = freezed,
    Object? returnTrip = freezed,
  }) {
    return _then(_FareStructure(
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      packageId: packageId == freezed
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as int?,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      fareMinimum: fareMinimum == freezed
          ? _value.fareMinimum
          : fareMinimum // ignore: cast_nullable_to_non_nullable
              as double?,
      fareFixed: fareFixed == freezed
          ? _value.fareFixed
          : fareFixed // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerKm: farePerKm == freezed
          ? _value.farePerKm
          : farePerKm // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerMin: farePerMin == freezed
          ? _value.farePerMin
          : farePerMin // ignore: cast_nullable_to_non_nullable
              as double?,
      farePerWaitingMin: farePerWaitingMin == freezed
          ? _value.farePerWaitingMin
          : farePerWaitingMin // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      regionId: regionId == freezed
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int?,
      returnTrip: returnTrip == freezed
          ? _value.returnTrip
          : returnTrip // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FareStructure implements _FareStructure {
  _$_FareStructure(
      {this.fare,
      @JsonKey(name: 'package_id') this.packageId,
      @JsonKey(name: 'package_name') this.packageName,
      @JsonKey(name: 'fare_minimum') this.fareMinimum,
      @JsonKey(name: 'fare_fixed') this.fareFixed,
      @JsonKey(name: 'fare_per_km') this.farePerKm,
      @JsonKey(name: 'fare_per_min') this.farePerMin,
      @JsonKey(name: 'fare_per_waiting_min') this.farePerWaitingMin,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'ride_type') this.rideType,
      @JsonKey(name: 'region_id') this.regionId,
      @JsonKey(name: 'return_trip') this.returnTrip});

  factory _$_FareStructure.fromJson(Map<String, dynamic> json) =>
      _$_$_FareStructureFromJson(json);

  @override
  final int? fare;
  @override
  @JsonKey(name: 'package_id')
  final int? packageId;
  @override
  @JsonKey(name: 'package_name')
  final String? packageName;
  @override
  @JsonKey(name: 'fare_minimum')
  final double? fareMinimum;
  @override
  @JsonKey(name: 'fare_fixed')
  final double? fareFixed;
  @override
  @JsonKey(name: 'fare_per_km')
  final double? farePerKm;
  @override
  @JsonKey(name: 'fare_per_min')
  final double? farePerMin;
  @override
  @JsonKey(name: 'fare_per_waiting_min')
  final double? farePerWaitingMin;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'ride_type')
  final int? rideType;
  @override
  @JsonKey(name: 'region_id')
  final int? regionId;
  @override
  @JsonKey(name: 'return_trip')
  final int? returnTrip;

  @override
  String toString() {
    return 'FareStructure(fare: $fare, packageId: $packageId, packageName: $packageName, fareMinimum: $fareMinimum, fareFixed: $fareFixed, farePerKm: $farePerKm, farePerMin: $farePerMin, farePerWaitingMin: $farePerWaitingMin, vehicleType: $vehicleType, rideType: $rideType, regionId: $regionId, returnTrip: $returnTrip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FareStructure &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.packageId, packageId) ||
                const DeepCollectionEquality()
                    .equals(other.packageId, packageId)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.fareMinimum, fareMinimum) ||
                const DeepCollectionEquality()
                    .equals(other.fareMinimum, fareMinimum)) &&
            (identical(other.fareFixed, fareFixed) ||
                const DeepCollectionEquality()
                    .equals(other.fareFixed, fareFixed)) &&
            (identical(other.farePerKm, farePerKm) ||
                const DeepCollectionEquality()
                    .equals(other.farePerKm, farePerKm)) &&
            (identical(other.farePerMin, farePerMin) ||
                const DeepCollectionEquality()
                    .equals(other.farePerMin, farePerMin)) &&
            (identical(other.farePerWaitingMin, farePerWaitingMin) ||
                const DeepCollectionEquality()
                    .equals(other.farePerWaitingMin, farePerWaitingMin)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.rideType, rideType) ||
                const DeepCollectionEquality()
                    .equals(other.rideType, rideType)) &&
            (identical(other.regionId, regionId) ||
                const DeepCollectionEquality()
                    .equals(other.regionId, regionId)) &&
            (identical(other.returnTrip, returnTrip) ||
                const DeepCollectionEquality()
                    .equals(other.returnTrip, returnTrip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(packageId) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(fareMinimum) ^
      const DeepCollectionEquality().hash(fareFixed) ^
      const DeepCollectionEquality().hash(farePerKm) ^
      const DeepCollectionEquality().hash(farePerMin) ^
      const DeepCollectionEquality().hash(farePerWaitingMin) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(rideType) ^
      const DeepCollectionEquality().hash(regionId) ^
      const DeepCollectionEquality().hash(returnTrip);

  @JsonKey(ignore: true)
  @override
  _$FareStructureCopyWith<_FareStructure> get copyWith =>
      __$FareStructureCopyWithImpl<_FareStructure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FareStructureToJson(this);
  }
}

abstract class _FareStructure implements FareStructure {
  factory _FareStructure(
      {int? fare,
      @JsonKey(name: 'package_id') int? packageId,
      @JsonKey(name: 'package_name') String? packageName,
      @JsonKey(name: 'fare_minimum') double? fareMinimum,
      @JsonKey(name: 'fare_fixed') double? fareFixed,
      @JsonKey(name: 'fare_per_km') double? farePerKm,
      @JsonKey(name: 'fare_per_min') double? farePerMin,
      @JsonKey(name: 'fare_per_waiting_min') double? farePerWaitingMin,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'region_id') int? regionId,
      @JsonKey(name: 'return_trip') int? returnTrip}) = _$_FareStructure;

  factory _FareStructure.fromJson(Map<String, dynamic> json) =
      _$_FareStructure.fromJson;

  @override
  int? get fare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'package_id')
  int? get packageId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'package_name')
  String? get packageName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_minimum')
  double? get fareMinimum => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_fixed')
  double? get fareFixed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_per_km')
  double? get farePerKm => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_per_min')
  double? get farePerMin => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_per_waiting_min')
  double? get farePerWaitingMin => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'region_id')
  int? get regionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'return_trip')
  int? get returnTrip => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FareStructureCopyWith<_FareStructure> get copyWith =>
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

DeliveryCharge _$DeliveryChargeFromJson(Map<String, dynamic> json) {
  return _DeliveryCharge.fromJson(json);
}

/// @nodoc
class _$DeliveryChargeTearOff {
  const _$DeliveryChargeTearOff();

  _DeliveryCharge call(
      {String? currency,
      String? tnc,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'delivery_text')
          String? deliveryText,
      @JsonKey(name: 'delivery_charges_inst')
          List<Map<String, String>>? deliveryChargesInst,
      @JsonKey(name: 'estimated_distance')
          String? estimatedDistance,
      @JsonKey(name: 'estimated_charges')
          String? estimatedCharges}) {
    return _DeliveryCharge(
      currency: currency,
      tnc: tnc,
      cityId: cityId,
      deliveryText: deliveryText,
      deliveryChargesInst: deliveryChargesInst,
      estimatedDistance: estimatedDistance,
      estimatedCharges: estimatedCharges,
    );
  }

  DeliveryCharge fromJson(Map<String, Object> json) {
    return DeliveryCharge.fromJson(json);
  }
}

/// @nodoc
const $DeliveryCharge = _$DeliveryChargeTearOff();

/// @nodoc
mixin _$DeliveryCharge {
  String? get currency => throw _privateConstructorUsedError;
  String? get tnc => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_text')
  String? get deliveryText => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_charges_inst')
  List<Map<String, String>>? get deliveryChargesInst =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_distance')
  String? get estimatedDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_charges')
  String? get estimatedCharges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryChargeCopyWith<DeliveryCharge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryChargeCopyWith<$Res> {
  factory $DeliveryChargeCopyWith(
          DeliveryCharge value, $Res Function(DeliveryCharge) then) =
      _$DeliveryChargeCopyWithImpl<$Res>;
  $Res call(
      {String? currency,
      String? tnc,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'delivery_text')
          String? deliveryText,
      @JsonKey(name: 'delivery_charges_inst')
          List<Map<String, String>>? deliveryChargesInst,
      @JsonKey(name: 'estimated_distance')
          String? estimatedDistance,
      @JsonKey(name: 'estimated_charges')
          String? estimatedCharges});
}

/// @nodoc
class _$DeliveryChargeCopyWithImpl<$Res>
    implements $DeliveryChargeCopyWith<$Res> {
  _$DeliveryChargeCopyWithImpl(this._value, this._then);

  final DeliveryCharge _value;
  // ignore: unused_field
  final $Res Function(DeliveryCharge) _then;

  @override
  $Res call({
    Object? currency = freezed,
    Object? tnc = freezed,
    Object? cityId = freezed,
    Object? deliveryText = freezed,
    Object? deliveryChargesInst = freezed,
    Object? estimatedDistance = freezed,
    Object? estimatedCharges = freezed,
  }) {
    return _then(_value.copyWith(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      tnc: tnc == freezed
          ? _value.tnc
          : tnc // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryText: deliveryText == freezed
          ? _value.deliveryText
          : deliveryText // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryChargesInst: deliveryChargesInst == freezed
          ? _value.deliveryChargesInst
          : deliveryChargesInst // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      estimatedDistance: estimatedDistance == freezed
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCharges: estimatedCharges == freezed
          ? _value.estimatedCharges
          : estimatedCharges // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryChargeCopyWith<$Res>
    implements $DeliveryChargeCopyWith<$Res> {
  factory _$DeliveryChargeCopyWith(
          _DeliveryCharge value, $Res Function(_DeliveryCharge) then) =
      __$DeliveryChargeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? currency,
      String? tnc,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'delivery_text')
          String? deliveryText,
      @JsonKey(name: 'delivery_charges_inst')
          List<Map<String, String>>? deliveryChargesInst,
      @JsonKey(name: 'estimated_distance')
          String? estimatedDistance,
      @JsonKey(name: 'estimated_charges')
          String? estimatedCharges});
}

/// @nodoc
class __$DeliveryChargeCopyWithImpl<$Res>
    extends _$DeliveryChargeCopyWithImpl<$Res>
    implements _$DeliveryChargeCopyWith<$Res> {
  __$DeliveryChargeCopyWithImpl(
      _DeliveryCharge _value, $Res Function(_DeliveryCharge) _then)
      : super(_value, (v) => _then(v as _DeliveryCharge));

  @override
  _DeliveryCharge get _value => super._value as _DeliveryCharge;

  @override
  $Res call({
    Object? currency = freezed,
    Object? tnc = freezed,
    Object? cityId = freezed,
    Object? deliveryText = freezed,
    Object? deliveryChargesInst = freezed,
    Object? estimatedDistance = freezed,
    Object? estimatedCharges = freezed,
  }) {
    return _then(_DeliveryCharge(
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      tnc: tnc == freezed
          ? _value.tnc
          : tnc // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryText: deliveryText == freezed
          ? _value.deliveryText
          : deliveryText // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryChargesInst: deliveryChargesInst == freezed
          ? _value.deliveryChargesInst
          : deliveryChargesInst // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>?,
      estimatedDistance: estimatedDistance == freezed
          ? _value.estimatedDistance
          : estimatedDistance // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatedCharges: estimatedCharges == freezed
          ? _value.estimatedCharges
          : estimatedCharges // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryCharge implements _DeliveryCharge {
  _$_DeliveryCharge(
      {this.currency,
      this.tnc,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'delivery_text') this.deliveryText,
      @JsonKey(name: 'delivery_charges_inst') this.deliveryChargesInst,
      @JsonKey(name: 'estimated_distance') this.estimatedDistance,
      @JsonKey(name: 'estimated_charges') this.estimatedCharges});

  factory _$_DeliveryCharge.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryChargeFromJson(json);

  @override
  final String? currency;
  @override
  final String? tnc;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'delivery_text')
  final String? deliveryText;
  @override
  @JsonKey(name: 'delivery_charges_inst')
  final List<Map<String, String>>? deliveryChargesInst;
  @override
  @JsonKey(name: 'estimated_distance')
  final String? estimatedDistance;
  @override
  @JsonKey(name: 'estimated_charges')
  final String? estimatedCharges;

  @override
  String toString() {
    return 'DeliveryCharge(currency: $currency, tnc: $tnc, cityId: $cityId, deliveryText: $deliveryText, deliveryChargesInst: $deliveryChargesInst, estimatedDistance: $estimatedDistance, estimatedCharges: $estimatedCharges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryCharge &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.tnc, tnc) ||
                const DeepCollectionEquality().equals(other.tnc, tnc)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.deliveryText, deliveryText) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryText, deliveryText)) &&
            (identical(other.deliveryChargesInst, deliveryChargesInst) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryChargesInst, deliveryChargesInst)) &&
            (identical(other.estimatedDistance, estimatedDistance) ||
                const DeepCollectionEquality()
                    .equals(other.estimatedDistance, estimatedDistance)) &&
            (identical(other.estimatedCharges, estimatedCharges) ||
                const DeepCollectionEquality()
                    .equals(other.estimatedCharges, estimatedCharges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(tnc) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(deliveryText) ^
      const DeepCollectionEquality().hash(deliveryChargesInst) ^
      const DeepCollectionEquality().hash(estimatedDistance) ^
      const DeepCollectionEquality().hash(estimatedCharges);

  @JsonKey(ignore: true)
  @override
  _$DeliveryChargeCopyWith<_DeliveryCharge> get copyWith =>
      __$DeliveryChargeCopyWithImpl<_DeliveryCharge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryChargeToJson(this);
  }
}

abstract class _DeliveryCharge implements DeliveryCharge {
  factory _DeliveryCharge(
      {String? currency,
      String? tnc,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'delivery_text')
          String? deliveryText,
      @JsonKey(name: 'delivery_charges_inst')
          List<Map<String, String>>? deliveryChargesInst,
      @JsonKey(name: 'estimated_distance')
          String? estimatedDistance,
      @JsonKey(name: 'estimated_charges')
          String? estimatedCharges}) = _$_DeliveryCharge;

  factory _DeliveryCharge.fromJson(Map<String, dynamic> json) =
      _$_DeliveryCharge.fromJson;

  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get tnc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_text')
  String? get deliveryText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_charges_inst')
  List<Map<String, String>>? get deliveryChargesInst =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estimated_distance')
  String? get estimatedDistance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'estimated_charges')
  String? get estimatedCharges => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryChargeCopyWith<_DeliveryCharge> get copyWith =>
      throw _privateConstructorUsedError;
}

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
class _$DriverTearOff {
  const _$DriverTearOff();

  _Driver call(
      {double? latitude,
      double? longitude,
      double? rating,
      int? type,
      double? distance,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'vehicle_brand') String? vehicleBrand,
      @JsonKey(name: 'vehicle_name') String? vehicleName}) {
    return _Driver(
      latitude: latitude,
      longitude: longitude,
      rating: rating,
      type: type,
      distance: distance,
      driverId: driverId,
      userName: userName,
      driverName: driverName,
      phoneNo: phoneNo,
      avgRating: avgRating,
      cityId: cityId,
      driverImage: driverImage,
      vehicleNo: vehicleNo,
      vehicleType: vehicleType,
      vehicleBrand: vehicleBrand,
      vehicleName: vehicleName,
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
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_rating')
  double? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_no')
  String? get vehicleNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_brand')
  String? get vehicleBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res>;
  $Res call(
      {double? latitude,
      double? longitude,
      double? rating,
      int? type,
      double? distance,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'vehicle_brand') String? vehicleBrand,
      @JsonKey(name: 'vehicle_name') String? vehicleName});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res> implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  final Driver _value;
  // ignore: unused_field
  final $Res Function(Driver) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rating = freezed,
    Object? type = freezed,
    Object? distance = freezed,
    Object? driverId = freezed,
    Object? userName = freezed,
    Object? driverName = freezed,
    Object? phoneNo = freezed,
    Object? avgRating = freezed,
    Object? cityId = freezed,
    Object? driverImage = freezed,
    Object? vehicleNo = freezed,
    Object? vehicleType = freezed,
    Object? vehicleBrand = freezed,
    Object? vehicleName = freezed,
  }) {
    return _then(_value.copyWith(
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
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
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
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
      {double? latitude,
      double? longitude,
      double? rating,
      int? type,
      double? distance,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'vehicle_brand') String? vehicleBrand,
      @JsonKey(name: 'vehicle_name') String? vehicleName});
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? rating = freezed,
    Object? type = freezed,
    Object? distance = freezed,
    Object? driverId = freezed,
    Object? userName = freezed,
    Object? driverName = freezed,
    Object? phoneNo = freezed,
    Object? avgRating = freezed,
    Object? cityId = freezed,
    Object? driverImage = freezed,
    Object? vehicleNo = freezed,
    Object? vehicleType = freezed,
    Object? vehicleBrand = freezed,
    Object? vehicleName = freezed,
  }) {
    return _then(_Driver(
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      avgRating: avgRating == freezed
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
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
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleBrand: vehicleBrand == freezed
          ? _value.vehicleBrand
          : vehicleBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Driver implements _Driver {
  _$_Driver(
      {this.latitude,
      this.longitude,
      this.rating,
      this.type,
      this.distance,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'phone_no') this.phoneNo,
      @JsonKey(name: 'avg_rating') this.avgRating,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'driver_image') this.driverImage,
      @JsonKey(name: 'vehicle_no') this.vehicleNo,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'vehicle_brand') this.vehicleBrand,
      @JsonKey(name: 'vehicle_name') this.vehicleName});

  factory _$_Driver.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? rating;
  @override
  final int? type;
  @override
  final double? distance;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  @JsonKey(name: 'avg_rating')
  final double? avgRating;
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
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'vehicle_brand')
  final String? vehicleBrand;
  @override
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;

  @override
  String toString() {
    return 'Driver(latitude: $latitude, longitude: $longitude, rating: $rating, type: $type, distance: $distance, driverId: $driverId, userName: $userName, driverName: $driverName, phoneNo: $phoneNo, avgRating: $avgRating, cityId: $cityId, driverImage: $driverImage, vehicleNo: $vehicleNo, vehicleType: $vehicleType, vehicleBrand: $vehicleBrand, vehicleName: $vehicleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Driver &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNo, phoneNo)) &&
            (identical(other.avgRating, avgRating) ||
                const DeepCollectionEquality()
                    .equals(other.avgRating, avgRating)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.driverImage, driverImage) ||
                const DeepCollectionEquality()
                    .equals(other.driverImage, driverImage)) &&
            (identical(other.vehicleNo, vehicleNo) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNo, vehicleNo)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.vehicleBrand, vehicleBrand) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleBrand, vehicleBrand)) &&
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleName, vehicleName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(avgRating) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(driverImage) ^
      const DeepCollectionEquality().hash(vehicleNo) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(vehicleBrand) ^
      const DeepCollectionEquality().hash(vehicleName);

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
      {double? latitude,
      double? longitude,
      double? rating,
      int? type,
      double? distance,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'avg_rating') double? avgRating,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'vehicle_no') String? vehicleNo,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'vehicle_brand') String? vehicleBrand,
      @JsonKey(name: 'vehicle_name') String? vehicleName}) = _$_Driver;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$_Driver.fromJson;

  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avg_rating')
  double? get avgRating => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_brand')
  String? get vehicleBrand => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
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

  _Payment call(
      {String? name,
      int? enabled,
      List<String>? systems,
      @JsonKey(name: 'display_name') String? displayName}) {
    return _Payment(
      name: name,
      enabled: enabled,
      systems: systems,
      displayName: displayName,
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
  int? get enabled => throw _privateConstructorUsedError;
  List<String>? get systems => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      int? enabled,
      List<String>? systems,
      @JsonKey(name: 'display_name') String? displayName});
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
    Object? enabled = freezed,
    Object? systems = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$PaymentCopyWith(_Payment value, $Res Function(_Payment) then) =
      __$PaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      int? enabled,
      List<String>? systems,
      @JsonKey(name: 'display_name') String? displayName});
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
    Object? enabled = freezed,
    Object? systems = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_Payment(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: enabled == freezed
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as int?,
      systems: systems == freezed
          ? _value.systems
          : systems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payment implements _Payment {
  _$_Payment(
      {this.name,
      this.enabled,
      this.systems,
      @JsonKey(name: 'display_name') this.displayName});

  factory _$_Payment.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentFromJson(json);

  @override
  final String? name;
  @override
  final int? enabled;
  @override
  final List<String>? systems;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;

  @override
  String toString() {
    return 'Payment(name: $name, enabled: $enabled, systems: $systems, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payment &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.systems, systems) ||
                const DeepCollectionEquality()
                    .equals(other.systems, systems)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(systems) ^
      const DeepCollectionEquality().hash(displayName);

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
  factory _Payment(
      {String? name,
      int? enabled,
      List<String>? systems,
      @JsonKey(name: 'display_name') String? displayName}) = _$_Payment;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$_Payment.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get enabled => throw _privateConstructorUsedError;
  @override
  List<String>? get systems => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'amount') double? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') DateTime? loggedOn,
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
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'txn_date')
  String? get transactionDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'txn_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'logged_on')
  DateTime? get loggedOn => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'amount') double? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') DateTime? loggedOn,
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
              as double?,
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
              as DateTime?,
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
      @JsonKey(name: 'amount') double? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') DateTime? loggedOn,
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
              as double?,
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
              as DateTime?,
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
  final double? amount;
  @override
  @JsonKey(name: 'txn_date')
  final String? transactionDate;
  @override
  @JsonKey(name: 'txn_time')
  final String? transactionTime;
  @override
  @JsonKey(name: 'logged_on')
  final DateTime? loggedOn;
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
      @JsonKey(name: 'amount') double? amount,
      @JsonKey(name: 'txn_date') String? transactionDate,
      @JsonKey(name: 'txn_time') String? transactionTime,
      @JsonKey(name: 'logged_on') DateTime? loggedOn,
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
  double? get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'txn_date')
  String? get transactionDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'txn_time')
  String? get transactionTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logged_on')
  DateTime? get loggedOn => throw _privateConstructorUsedError;
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

NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) {
  return _NotificationMessage.fromJson(json);
}

/// @nodoc
class _$NotificationMessageTearOff {
  const _$NotificationMessageTearOff();

  _NotificationMessage call(
      int flag,
      {String? title,
      String? message,
      double? rating,
      String? fare,
      double? bearing,
      String? discount,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'driver_car_no')
          String? driverCarNo,
      @JsonKey(name: 'vehicle_name')
          String? vehicleName,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'vehicle_model')
          String? vehicleModel,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'title_ios')
          String? titleIos,
      @JsonKey(name: 'message_ios')
          String? messageIos,
      @JsonKey(name: 'vehicle_type')
          int? vehicleType,
      @JsonKey(name: 'session_id')
          int? sessionId,
      @JsonKey(name: 'engagement_id')
          String? engagementId,
      @JsonKey(name: 'driver_car_image')
          String? driverCarImage,
      @JsonKey(name: 'to_pay')
          String? toPay,
      @JsonKey(name: 'payment_mode')
          int? paymentMode,
      @JsonKey(name: 'distance_travelled')
          String? distanceTravelled,
      @JsonKey(name: 'ride_time')
          String? rideTime,
      @JsonKey(name: 'distance_unit')
          String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet')
          String? paidUsingWallet,
      @JsonKey(name: 'current_location_latitude')
          double? currentLocationLatitude,
      @JsonKey(name: 'current_location_longitude')
          double? currentLocationLongitude,
      @JsonKey(name: 'is_corporate_ride')
          int? isCorporateRide,
      @JsonKey(name: 'marker_icon')
          String? markerIcon,
      @JsonKey(name: 'order_status')
          int? orderStatus}) {
    return _NotificationMessage(
      flag,
      title: title,
      message: message,
      rating: rating,
      fare: fare,
      bearing: bearing,
      discount: discount,
      log: log,
      error: error,
      phoneNo: phoneNo,
      driverId: driverId,
      driverCarNo: driverCarNo,
      vehicleName: vehicleName,
      userName: userName,
      vehicleModel: vehicleModel,
      userImage: userImage,
      titleIos: titleIos,
      messageIos: messageIos,
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
      currentLocationLatitude: currentLocationLatitude,
      currentLocationLongitude: currentLocationLongitude,
      isCorporateRide: isCorporateRide,
      markerIcon: markerIcon,
      orderStatus: orderStatus,
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
  double? get bearing => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_car_no')
  String? get driverCarNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_model')
  String? get vehicleModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_image')
  String? get userImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ios')
  String? get titleIos => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_ios')
  String? get messageIos => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'current_location_latitude')
  double? get currentLocationLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_location_longitude')
  double? get currentLocationLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_corporate_ride')
  int? get isCorporateRide => throw _privateConstructorUsedError;
  @JsonKey(name: 'marker_icon')
  String? get markerIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  int? get orderStatus => throw _privateConstructorUsedError;

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
      double? bearing,
      String? discount,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'driver_car_no')
          String? driverCarNo,
      @JsonKey(name: 'vehicle_name')
          String? vehicleName,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'vehicle_model')
          String? vehicleModel,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'title_ios')
          String? titleIos,
      @JsonKey(name: 'message_ios')
          String? messageIos,
      @JsonKey(name: 'vehicle_type')
          int? vehicleType,
      @JsonKey(name: 'session_id')
          int? sessionId,
      @JsonKey(name: 'engagement_id')
          String? engagementId,
      @JsonKey(name: 'driver_car_image')
          String? driverCarImage,
      @JsonKey(name: 'to_pay')
          String? toPay,
      @JsonKey(name: 'payment_mode')
          int? paymentMode,
      @JsonKey(name: 'distance_travelled')
          String? distanceTravelled,
      @JsonKey(name: 'ride_time')
          String? rideTime,
      @JsonKey(name: 'distance_unit')
          String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet')
          String? paidUsingWallet,
      @JsonKey(name: 'current_location_latitude')
          double? currentLocationLatitude,
      @JsonKey(name: 'current_location_longitude')
          double? currentLocationLongitude,
      @JsonKey(name: 'is_corporate_ride')
          int? isCorporateRide,
      @JsonKey(name: 'marker_icon')
          String? markerIcon,
      @JsonKey(name: 'order_status')
          int? orderStatus});
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
    Object? bearing = freezed,
    Object? discount = freezed,
    Object? log = freezed,
    Object? error = freezed,
    Object? phoneNo = freezed,
    Object? driverId = freezed,
    Object? driverCarNo = freezed,
    Object? vehicleName = freezed,
    Object? userName = freezed,
    Object? vehicleModel = freezed,
    Object? userImage = freezed,
    Object? titleIos = freezed,
    Object? messageIos = freezed,
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
    Object? currentLocationLatitude = freezed,
    Object? currentLocationLongitude = freezed,
    Object? isCorporateRide = freezed,
    Object? markerIcon = freezed,
    Object? orderStatus = freezed,
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
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
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
      currentLocationLatitude: currentLocationLatitude == freezed
          ? _value.currentLocationLatitude
          : currentLocationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLocationLongitude: currentLocationLongitude == freezed
          ? _value.currentLocationLongitude
          : currentLocationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      isCorporateRide: isCorporateRide == freezed
          ? _value.isCorporateRide
          : isCorporateRide // ignore: cast_nullable_to_non_nullable
              as int?,
      markerIcon: markerIcon == freezed
          ? _value.markerIcon
          : markerIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int?,
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
      double? bearing,
      String? discount,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'driver_car_no')
          String? driverCarNo,
      @JsonKey(name: 'vehicle_name')
          String? vehicleName,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'vehicle_model')
          String? vehicleModel,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'title_ios')
          String? titleIos,
      @JsonKey(name: 'message_ios')
          String? messageIos,
      @JsonKey(name: 'vehicle_type')
          int? vehicleType,
      @JsonKey(name: 'session_id')
          int? sessionId,
      @JsonKey(name: 'engagement_id')
          String? engagementId,
      @JsonKey(name: 'driver_car_image')
          String? driverCarImage,
      @JsonKey(name: 'to_pay')
          String? toPay,
      @JsonKey(name: 'payment_mode')
          int? paymentMode,
      @JsonKey(name: 'distance_travelled')
          String? distanceTravelled,
      @JsonKey(name: 'ride_time')
          String? rideTime,
      @JsonKey(name: 'distance_unit')
          String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet')
          String? paidUsingWallet,
      @JsonKey(name: 'current_location_latitude')
          double? currentLocationLatitude,
      @JsonKey(name: 'current_location_longitude')
          double? currentLocationLongitude,
      @JsonKey(name: 'is_corporate_ride')
          int? isCorporateRide,
      @JsonKey(name: 'marker_icon')
          String? markerIcon,
      @JsonKey(name: 'order_status')
          int? orderStatus});
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
    Object? bearing = freezed,
    Object? discount = freezed,
    Object? log = freezed,
    Object? error = freezed,
    Object? phoneNo = freezed,
    Object? driverId = freezed,
    Object? driverCarNo = freezed,
    Object? vehicleName = freezed,
    Object? userName = freezed,
    Object? vehicleModel = freezed,
    Object? userImage = freezed,
    Object? titleIos = freezed,
    Object? messageIos = freezed,
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
    Object? currentLocationLatitude = freezed,
    Object? currentLocationLongitude = freezed,
    Object? isCorporateRide = freezed,
    Object? markerIcon = freezed,
    Object? orderStatus = freezed,
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
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModel: vehicleModel == freezed
          ? _value.vehicleModel
          : vehicleModel // ignore: cast_nullable_to_non_nullable
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
      currentLocationLatitude: currentLocationLatitude == freezed
          ? _value.currentLocationLatitude
          : currentLocationLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      currentLocationLongitude: currentLocationLongitude == freezed
          ? _value.currentLocationLongitude
          : currentLocationLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      isCorporateRide: isCorporateRide == freezed
          ? _value.isCorporateRide
          : isCorporateRide // ignore: cast_nullable_to_non_nullable
              as int?,
      markerIcon: markerIcon == freezed
          ? _value.markerIcon
          : markerIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationMessage implements _NotificationMessage {
  _$_NotificationMessage(
      this.flag,
      {this.title,
      this.message,
      this.rating,
      this.fare,
      this.bearing,
      this.discount,
      this.log,
      this.error,
      @JsonKey(name: 'phone_no')
          this.phoneNo,
      @JsonKey(name: 'driver_id')
          this.driverId,
      @JsonKey(name: 'driver_car_no')
          this.driverCarNo,
      @JsonKey(name: 'vehicle_name')
          this.vehicleName,
      @JsonKey(name: 'user_name')
          this.userName,
      @JsonKey(name: 'vehicle_model')
          this.vehicleModel,
      @JsonKey(name: 'user_image')
          this.userImage,
      @JsonKey(name: 'title_ios')
          this.titleIos,
      @JsonKey(name: 'message_ios')
          this.messageIos,
      @JsonKey(name: 'vehicle_type')
          this.vehicleType,
      @JsonKey(name: 'session_id')
          this.sessionId,
      @JsonKey(name: 'engagement_id')
          this.engagementId,
      @JsonKey(name: 'driver_car_image')
          this.driverCarImage,
      @JsonKey(name: 'to_pay')
          this.toPay,
      @JsonKey(name: 'payment_mode')
          this.paymentMode,
      @JsonKey(name: 'distance_travelled')
          this.distanceTravelled,
      @JsonKey(name: 'ride_time')
          this.rideTime,
      @JsonKey(name: 'distance_unit')
          this.distanceUnit,
      @JsonKey(name: 'paid_using_wallet')
          this.paidUsingWallet,
      @JsonKey(name: 'current_location_latitude')
          this.currentLocationLatitude,
      @JsonKey(name: 'current_location_longitude')
          this.currentLocationLongitude,
      @JsonKey(name: 'is_corporate_ride')
          this.isCorporateRide,
      @JsonKey(name: 'marker_icon')
          this.markerIcon,
      @JsonKey(name: 'order_status')
          this.orderStatus});

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
  final double? bearing;
  @override
  final String? discount;
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
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'vehicle_model')
  final String? vehicleModel;
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
  @JsonKey(name: 'current_location_latitude')
  final double? currentLocationLatitude;
  @override
  @JsonKey(name: 'current_location_longitude')
  final double? currentLocationLongitude;
  @override
  @JsonKey(name: 'is_corporate_ride')
  final int? isCorporateRide;
  @override
  @JsonKey(name: 'marker_icon')
  final String? markerIcon;
  @override
  @JsonKey(name: 'order_status')
  final int? orderStatus;

  @override
  String toString() {
    return 'NotificationMessage(flag: $flag, title: $title, message: $message, rating: $rating, fare: $fare, bearing: $bearing, discount: $discount, log: $log, error: $error, phoneNo: $phoneNo, driverId: $driverId, driverCarNo: $driverCarNo, vehicleName: $vehicleName, userName: $userName, vehicleModel: $vehicleModel, userImage: $userImage, titleIos: $titleIos, messageIos: $messageIos, vehicleType: $vehicleType, sessionId: $sessionId, engagementId: $engagementId, driverCarImage: $driverCarImage, toPay: $toPay, paymentMode: $paymentMode, distanceTravelled: $distanceTravelled, rideTime: $rideTime, distanceUnit: $distanceUnit, paidUsingWallet: $paidUsingWallet, currentLocationLatitude: $currentLocationLatitude, currentLocationLongitude: $currentLocationLongitude, isCorporateRide: $isCorporateRide, markerIcon: $markerIcon, orderStatus: $orderStatus)';
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
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality()
                    .equals(other.bearing, bearing)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
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
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleName, vehicleName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.vehicleModel, vehicleModel) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleModel, vehicleModel)) &&
            (identical(other.userImage, userImage) ||
                const DeepCollectionEquality()
                    .equals(other.userImage, userImage)) &&
            (identical(other.titleIos, titleIos) ||
                const DeepCollectionEquality()
                    .equals(other.titleIos, titleIos)) &&
            (identical(other.messageIos, messageIos) ||
                const DeepCollectionEquality()
                    .equals(other.messageIos, messageIos)) &&
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
            (identical(other.rideTime, rideTime) || const DeepCollectionEquality().equals(other.rideTime, rideTime)) &&
            (identical(other.distanceUnit, distanceUnit) || const DeepCollectionEquality().equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.paidUsingWallet, paidUsingWallet) || const DeepCollectionEquality().equals(other.paidUsingWallet, paidUsingWallet)) &&
            (identical(other.currentLocationLatitude, currentLocationLatitude) || const DeepCollectionEquality().equals(other.currentLocationLatitude, currentLocationLatitude)) &&
            (identical(other.currentLocationLongitude, currentLocationLongitude) || const DeepCollectionEquality().equals(other.currentLocationLongitude, currentLocationLongitude)) &&
            (identical(other.isCorporateRide, isCorporateRide) || const DeepCollectionEquality().equals(other.isCorporateRide, isCorporateRide)) &&
            (identical(other.markerIcon, markerIcon) || const DeepCollectionEquality().equals(other.markerIcon, markerIcon)) &&
            (identical(other.orderStatus, orderStatus) || const DeepCollectionEquality().equals(other.orderStatus, orderStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(bearing) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(driverCarNo) ^
      const DeepCollectionEquality().hash(vehicleName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(vehicleModel) ^
      const DeepCollectionEquality().hash(userImage) ^
      const DeepCollectionEquality().hash(titleIos) ^
      const DeepCollectionEquality().hash(messageIos) ^
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
      const DeepCollectionEquality().hash(currentLocationLatitude) ^
      const DeepCollectionEquality().hash(currentLocationLongitude) ^
      const DeepCollectionEquality().hash(isCorporateRide) ^
      const DeepCollectionEquality().hash(markerIcon) ^
      const DeepCollectionEquality().hash(orderStatus);

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
  factory _NotificationMessage(
      int flag,
      {String? title,
      String? message,
      double? rating,
      String? fare,
      double? bearing,
      String? discount,
      String? log,
      String? error,
      @JsonKey(name: 'phone_no')
          String? phoneNo,
      @JsonKey(name: 'driver_id')
          int? driverId,
      @JsonKey(name: 'driver_car_no')
          String? driverCarNo,
      @JsonKey(name: 'vehicle_name')
          String? vehicleName,
      @JsonKey(name: 'user_name')
          String? userName,
      @JsonKey(name: 'vehicle_model')
          String? vehicleModel,
      @JsonKey(name: 'user_image')
          String? userImage,
      @JsonKey(name: 'title_ios')
          String? titleIos,
      @JsonKey(name: 'message_ios')
          String? messageIos,
      @JsonKey(name: 'vehicle_type')
          int? vehicleType,
      @JsonKey(name: 'session_id')
          int? sessionId,
      @JsonKey(name: 'engagement_id')
          String? engagementId,
      @JsonKey(name: 'driver_car_image')
          String? driverCarImage,
      @JsonKey(name: 'to_pay')
          String? toPay,
      @JsonKey(name: 'payment_mode')
          int? paymentMode,
      @JsonKey(name: 'distance_travelled')
          String? distanceTravelled,
      @JsonKey(name: 'ride_time')
          String? rideTime,
      @JsonKey(name: 'distance_unit')
          String? distanceUnit,
      @JsonKey(name: 'paid_using_wallet')
          String? paidUsingWallet,
      @JsonKey(name: 'current_location_latitude')
          double? currentLocationLatitude,
      @JsonKey(name: 'current_location_longitude')
          double? currentLocationLongitude,
      @JsonKey(name: 'is_corporate_ride')
          int? isCorporateRide,
      @JsonKey(name: 'marker_icon')
          String? markerIcon,
      @JsonKey(name: 'order_status')
          int? orderStatus}) = _$_NotificationMessage;

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
  double? get bearing => throw _privateConstructorUsedError;
  @override
  String? get discount => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_model')
  String? get vehicleModel => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'current_location_latitude')
  double? get currentLocationLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_location_longitude')
  double? get currentLocationLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_corporate_ride')
  int? get isCorporateRide => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'marker_icon')
  String? get markerIcon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_status')
  int? get orderStatus => throw _privateConstructorUsedError;
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
      double? toPay,
      String? toPayText}) {
    return _RideDetail(
      fare: fare,
      paymentMode: paymentMode,
      distanceTraveled: distanceTraveled,
      discount: discount,
      paidUsingWallet: paidUsingWallet,
      rideTime: rideTime,
      distanceUnit: distanceUnit,
      toPay: toPay,
      toPayText: toPayText,
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
  String? get toPayText => throw _privateConstructorUsedError;

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
      double? toPay,
      String? toPayText});
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
    Object? toPayText = freezed,
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
      toPayText: toPayText == freezed
          ? _value.toPayText
          : toPayText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      double? toPay,
      String? toPayText});
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
    Object? toPayText = freezed,
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
      toPayText: toPayText == freezed
          ? _value.toPayText
          : toPayText // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.toPay,
      this.toPayText});

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
  final String? toPayText;

  @override
  String toString() {
    return 'RideDetail(fare: $fare, paymentMode: $paymentMode, distanceTraveled: $distanceTraveled, discount: $discount, paidUsingWallet: $paidUsingWallet, rideTime: $rideTime, distanceUnit: $distanceUnit, toPay: $toPay, toPayText: $toPayText)';
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
                const DeepCollectionEquality().equals(other.toPay, toPay)) &&
            (identical(other.toPayText, toPayText) ||
                const DeepCollectionEquality()
                    .equals(other.toPayText, toPayText)));
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
      const DeepCollectionEquality().hash(toPay) ^
      const DeepCollectionEquality().hash(toPayText);

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
      double? toPay,
      String? toPayText}) = _$_RideDetail;

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
  String? get toPayText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RideDetailCopyWith<_RideDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

  _Address call(
      {String? type,
      int? id,
      String? instr,
      @JsonKey(name: 'addr') String? addressName,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude,
      @JsonKey(name: 'freq') int? frequency,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'is_confirmed') int? isConfirmed}) {
    return _Address(
      type: type,
      id: id,
      instr: instr,
      addressName: addressName,
      latitude: latitude,
      longitude: longitude,
      frequency: frequency,
      googlePlaceId: googlePlaceId,
      isConfirmed: isConfirmed,
    );
  }

  Address fromJson(Map<String, Object> json) {
    return Address.fromJson(json);
  }
}

/// @nodoc
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get instr => throw _privateConstructorUsedError;
  @JsonKey(name: 'addr')
  String? get addressName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'freq')
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_confirmed')
  int? get isConfirmed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call(
      {String? type,
      int? id,
      String? instr,
      @JsonKey(name: 'addr') String? addressName,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude,
      @JsonKey(name: 'freq') int? frequency,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'is_confirmed') int? isConfirmed});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? instr = freezed,
    Object? addressName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? frequency = freezed,
    Object? googlePlaceId = freezed,
    Object? isConfirmed = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      instr: instr == freezed
          ? _value.instr
          : instr // ignore: cast_nullable_to_non_nullable
              as String?,
      addressName: addressName == freezed
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      googlePlaceId: googlePlaceId == freezed
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      isConfirmed: isConfirmed == freezed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type,
      int? id,
      String? instr,
      @JsonKey(name: 'addr') String? addressName,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude,
      @JsonKey(name: 'freq') int? frequency,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'is_confirmed') int? isConfirmed});
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? instr = freezed,
    Object? addressName = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? frequency = freezed,
    Object? googlePlaceId = freezed,
    Object? isConfirmed = freezed,
  }) {
    return _then(_Address(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      instr: instr == freezed
          ? _value.instr
          : instr // ignore: cast_nullable_to_non_nullable
              as String?,
      addressName: addressName == freezed
          ? _value.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      googlePlaceId: googlePlaceId == freezed
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String?,
      isConfirmed: isConfirmed == freezed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {this.type,
      this.id,
      this.instr,
      @JsonKey(name: 'addr') this.addressName,
      @JsonKey(name: 'lat') this.latitude,
      @JsonKey(name: 'lng') this.longitude,
      @JsonKey(name: 'freq') this.frequency,
      @JsonKey(name: 'google_place_id') this.googlePlaceId,
      @JsonKey(name: 'is_confirmed') this.isConfirmed});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressFromJson(json);

  @override
  final String? type;
  @override
  final int? id;
  @override
  final String? instr;
  @override
  @JsonKey(name: 'addr')
  final String? addressName;
  @override
  @JsonKey(name: 'lat')
  final String? latitude;
  @override
  @JsonKey(name: 'lng')
  final String? longitude;
  @override
  @JsonKey(name: 'freq')
  final int? frequency;
  @override
  @JsonKey(name: 'google_place_id')
  final String? googlePlaceId;
  @override
  @JsonKey(name: 'is_confirmed')
  final int? isConfirmed;

  @override
  String toString() {
    return 'Address(type: $type, id: $id, instr: $instr, addressName: $addressName, latitude: $latitude, longitude: $longitude, frequency: $frequency, googlePlaceId: $googlePlaceId, isConfirmed: $isConfirmed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Address &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.instr, instr) ||
                const DeepCollectionEquality().equals(other.instr, instr)) &&
            (identical(other.addressName, addressName) ||
                const DeepCollectionEquality()
                    .equals(other.addressName, addressName)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                const DeepCollectionEquality()
                    .equals(other.googlePlaceId, googlePlaceId)) &&
            (identical(other.isConfirmed, isConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.isConfirmed, isConfirmed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(instr) ^
      const DeepCollectionEquality().hash(addressName) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(googlePlaceId) ^
      const DeepCollectionEquality().hash(isConfirmed);

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressToJson(this);
  }
}

abstract class _Address implements Address {
  factory _Address(
      {String? type,
      int? id,
      String? instr,
      @JsonKey(name: 'addr') String? addressName,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude,
      @JsonKey(name: 'freq') int? frequency,
      @JsonKey(name: 'google_place_id') String? googlePlaceId,
      @JsonKey(name: 'is_confirmed') int? isConfirmed}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get instr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'addr')
  String? get addressName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lat')
  String? get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lng')
  String? get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'freq')
  int? get frequency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'google_place_id')
  String? get googlePlaceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_confirmed')
  int? get isConfirmed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduledRide _$ScheduledRideFromJson(Map<String, dynamic> json) {
  return _ScheduledRide.fromJson(json);
}

/// @nodoc
class _$ScheduledRideTearOff {
  const _$ScheduledRideTearOff();

  _ScheduledRide call(
      {double? latitude,
      double? longitude,
      int? status,
      int? modifiable,
      @JsonKey(name: 'op_drop_latitude') double? opDropLatitude,
      @JsonKey(name: 'op_drop_longitude') double? opDropLongitude,
      @JsonKey(name: 'pickup_id') int? pickupId,
      @JsonKey(name: 'preferred_payment_mode') int? preferredPaymentMode,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'ride_type') int? rideType}) {
    return _ScheduledRide(
      latitude: latitude,
      longitude: longitude,
      status: status,
      modifiable: modifiable,
      opDropLatitude: opDropLatitude,
      opDropLongitude: opDropLongitude,
      pickupId: pickupId,
      preferredPaymentMode: preferredPaymentMode,
      pickupLocationAddress: pickupLocationAddress,
      dropLocationAddress: dropLocationAddress,
      pickupTime: pickupTime,
      vehicleName: vehicleName,
      rideType: rideType,
    );
  }

  ScheduledRide fromJson(Map<String, Object> json) {
    return ScheduledRide.fromJson(json);
  }
}

/// @nodoc
const $ScheduledRide = _$ScheduledRideTearOff();

/// @nodoc
mixin _$ScheduledRide {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get modifiable => throw _privateConstructorUsedError;
  @JsonKey(name: 'op_drop_latitude')
  double? get opDropLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'op_drop_longitude')
  double? get opDropLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_id')
  int? get pickupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_payment_mode')
  int? get preferredPaymentMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_location_address')
  String? get pickupLocationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_location_address')
  String? get dropLocationAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_time')
  DateTime? get pickupTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduledRideCopyWith<ScheduledRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledRideCopyWith<$Res> {
  factory $ScheduledRideCopyWith(
          ScheduledRide value, $Res Function(ScheduledRide) then) =
      _$ScheduledRideCopyWithImpl<$Res>;
  $Res call(
      {double? latitude,
      double? longitude,
      int? status,
      int? modifiable,
      @JsonKey(name: 'op_drop_latitude') double? opDropLatitude,
      @JsonKey(name: 'op_drop_longitude') double? opDropLongitude,
      @JsonKey(name: 'pickup_id') int? pickupId,
      @JsonKey(name: 'preferred_payment_mode') int? preferredPaymentMode,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'ride_type') int? rideType});
}

/// @nodoc
class _$ScheduledRideCopyWithImpl<$Res>
    implements $ScheduledRideCopyWith<$Res> {
  _$ScheduledRideCopyWithImpl(this._value, this._then);

  final ScheduledRide _value;
  // ignore: unused_field
  final $Res Function(ScheduledRide) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? modifiable = freezed,
    Object? opDropLatitude = freezed,
    Object? opDropLongitude = freezed,
    Object? pickupId = freezed,
    Object? preferredPaymentMode = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? pickupTime = freezed,
    Object? vehicleName = freezed,
    Object? rideType = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiable: modifiable == freezed
          ? _value.modifiable
          : modifiable // ignore: cast_nullable_to_non_nullable
              as int?,
      opDropLatitude: opDropLatitude == freezed
          ? _value.opDropLatitude
          : opDropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      opDropLongitude: opDropLongitude == freezed
          ? _value.opDropLongitude
          : opDropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupId: pickupId == freezed
          ? _value.pickupId
          : pickupId // ignore: cast_nullable_to_non_nullable
              as int?,
      preferredPaymentMode: preferredPaymentMode == freezed
          ? _value.preferredPaymentMode
          : preferredPaymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocationAddress: pickupLocationAddress == freezed
          ? _value.pickupLocationAddress
          : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationAddress: dropLocationAddress == freezed
          ? _value.dropLocationAddress
          : dropLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ScheduledRideCopyWith<$Res>
    implements $ScheduledRideCopyWith<$Res> {
  factory _$ScheduledRideCopyWith(
          _ScheduledRide value, $Res Function(_ScheduledRide) then) =
      __$ScheduledRideCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? latitude,
      double? longitude,
      int? status,
      int? modifiable,
      @JsonKey(name: 'op_drop_latitude') double? opDropLatitude,
      @JsonKey(name: 'op_drop_longitude') double? opDropLongitude,
      @JsonKey(name: 'pickup_id') int? pickupId,
      @JsonKey(name: 'preferred_payment_mode') int? preferredPaymentMode,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'ride_type') int? rideType});
}

/// @nodoc
class __$ScheduledRideCopyWithImpl<$Res>
    extends _$ScheduledRideCopyWithImpl<$Res>
    implements _$ScheduledRideCopyWith<$Res> {
  __$ScheduledRideCopyWithImpl(
      _ScheduledRide _value, $Res Function(_ScheduledRide) _then)
      : super(_value, (v) => _then(v as _ScheduledRide));

  @override
  _ScheduledRide get _value => super._value as _ScheduledRide;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? modifiable = freezed,
    Object? opDropLatitude = freezed,
    Object? opDropLongitude = freezed,
    Object? pickupId = freezed,
    Object? preferredPaymentMode = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? pickupTime = freezed,
    Object? vehicleName = freezed,
    Object? rideType = freezed,
  }) {
    return _then(_ScheduledRide(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiable: modifiable == freezed
          ? _value.modifiable
          : modifiable // ignore: cast_nullable_to_non_nullable
              as int?,
      opDropLatitude: opDropLatitude == freezed
          ? _value.opDropLatitude
          : opDropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      opDropLongitude: opDropLongitude == freezed
          ? _value.opDropLongitude
          : opDropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupId: pickupId == freezed
          ? _value.pickupId
          : pickupId // ignore: cast_nullable_to_non_nullable
              as int?,
      preferredPaymentMode: preferredPaymentMode == freezed
          ? _value.preferredPaymentMode
          : preferredPaymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupLocationAddress: pickupLocationAddress == freezed
          ? _value.pickupLocationAddress
          : pickupLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationAddress: dropLocationAddress == freezed
          ? _value.dropLocationAddress
          : dropLocationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vehicleName: vehicleName == freezed
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduledRide implements _ScheduledRide {
  _$_ScheduledRide(
      {this.latitude,
      this.longitude,
      this.status,
      this.modifiable,
      @JsonKey(name: 'op_drop_latitude') this.opDropLatitude,
      @JsonKey(name: 'op_drop_longitude') this.opDropLongitude,
      @JsonKey(name: 'pickup_id') this.pickupId,
      @JsonKey(name: 'preferred_payment_mode') this.preferredPaymentMode,
      @JsonKey(name: 'pickup_location_address') this.pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') this.dropLocationAddress,
      @JsonKey(name: 'pickup_time') this.pickupTime,
      @JsonKey(name: 'vehicle_name') this.vehicleName,
      @JsonKey(name: 'ride_type') this.rideType});

  factory _$_ScheduledRide.fromJson(Map<String, dynamic> json) =>
      _$_$_ScheduledRideFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final int? status;
  @override
  final int? modifiable;
  @override
  @JsonKey(name: 'op_drop_latitude')
  final double? opDropLatitude;
  @override
  @JsonKey(name: 'op_drop_longitude')
  final double? opDropLongitude;
  @override
  @JsonKey(name: 'pickup_id')
  final int? pickupId;
  @override
  @JsonKey(name: 'preferred_payment_mode')
  final int? preferredPaymentMode;
  @override
  @JsonKey(name: 'pickup_location_address')
  final String? pickupLocationAddress;
  @override
  @JsonKey(name: 'drop_location_address')
  final String? dropLocationAddress;
  @override
  @JsonKey(name: 'pickup_time')
  final DateTime? pickupTime;
  @override
  @JsonKey(name: 'vehicle_name')
  final String? vehicleName;
  @override
  @JsonKey(name: 'ride_type')
  final int? rideType;

  @override
  String toString() {
    return 'ScheduledRide(latitude: $latitude, longitude: $longitude, status: $status, modifiable: $modifiable, opDropLatitude: $opDropLatitude, opDropLongitude: $opDropLongitude, pickupId: $pickupId, preferredPaymentMode: $preferredPaymentMode, pickupLocationAddress: $pickupLocationAddress, dropLocationAddress: $dropLocationAddress, pickupTime: $pickupTime, vehicleName: $vehicleName, rideType: $rideType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScheduledRide &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.modifiable, modifiable) ||
                const DeepCollectionEquality()
                    .equals(other.modifiable, modifiable)) &&
            (identical(other.opDropLatitude, opDropLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.opDropLatitude, opDropLatitude)) &&
            (identical(other.opDropLongitude, opDropLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.opDropLongitude, opDropLongitude)) &&
            (identical(other.pickupId, pickupId) ||
                const DeepCollectionEquality()
                    .equals(other.pickupId, pickupId)) &&
            (identical(other.preferredPaymentMode, preferredPaymentMode) ||
                const DeepCollectionEquality().equals(
                    other.preferredPaymentMode, preferredPaymentMode)) &&
            (identical(other.pickupLocationAddress, pickupLocationAddress) ||
                const DeepCollectionEquality().equals(
                    other.pickupLocationAddress, pickupLocationAddress)) &&
            (identical(other.dropLocationAddress, dropLocationAddress) ||
                const DeepCollectionEquality()
                    .equals(other.dropLocationAddress, dropLocationAddress)) &&
            (identical(other.pickupTime, pickupTime) ||
                const DeepCollectionEquality()
                    .equals(other.pickupTime, pickupTime)) &&
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleName, vehicleName)) &&
            (identical(other.rideType, rideType) ||
                const DeepCollectionEquality()
                    .equals(other.rideType, rideType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(modifiable) ^
      const DeepCollectionEquality().hash(opDropLatitude) ^
      const DeepCollectionEquality().hash(opDropLongitude) ^
      const DeepCollectionEquality().hash(pickupId) ^
      const DeepCollectionEquality().hash(preferredPaymentMode) ^
      const DeepCollectionEquality().hash(pickupLocationAddress) ^
      const DeepCollectionEquality().hash(dropLocationAddress) ^
      const DeepCollectionEquality().hash(pickupTime) ^
      const DeepCollectionEquality().hash(vehicleName) ^
      const DeepCollectionEquality().hash(rideType);

  @JsonKey(ignore: true)
  @override
  _$ScheduledRideCopyWith<_ScheduledRide> get copyWith =>
      __$ScheduledRideCopyWithImpl<_ScheduledRide>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ScheduledRideToJson(this);
  }
}

abstract class _ScheduledRide implements ScheduledRide {
  factory _ScheduledRide(
      {double? latitude,
      double? longitude,
      int? status,
      int? modifiable,
      @JsonKey(name: 'op_drop_latitude') double? opDropLatitude,
      @JsonKey(name: 'op_drop_longitude') double? opDropLongitude,
      @JsonKey(name: 'pickup_id') int? pickupId,
      @JsonKey(name: 'preferred_payment_mode') int? preferredPaymentMode,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'pickup_time') DateTime? pickupTime,
      @JsonKey(name: 'vehicle_name') String? vehicleName,
      @JsonKey(name: 'ride_type') int? rideType}) = _$_ScheduledRide;

  factory _ScheduledRide.fromJson(Map<String, dynamic> json) =
      _$_ScheduledRide.fromJson;

  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  int? get modifiable => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'op_drop_latitude')
  double? get opDropLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'op_drop_longitude')
  double? get opDropLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_id')
  int? get pickupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'preferred_payment_mode')
  int? get preferredPaymentMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_location_address')
  String? get pickupLocationAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_location_address')
  String? get dropLocationAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_time')
  DateTime? get pickupTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_name')
  String? get vehicleName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScheduledRideCopyWith<_ScheduledRide> get copyWith =>
      throw _privateConstructorUsedError;
}

RideHistory _$RideHistoryFromJson(Map<String, dynamic> json) {
  return _RideHistory.fromJson(json);
}

/// @nodoc
class _$RideHistoryTearOff {
  const _$RideHistoryTearOff();

  _RideHistory call(
      {double? distance,
      double? longitude,
      int? status,
      int? modifiable,
      int? amount,
      String? currency,
      String? date,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'is_cancelled_ride') int? isCancelledRide,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'manually_edited') int? manuallyEdited,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'autos_status_text') String? autosStatusText,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'created_at') DateTime? createdAt}) {
    return _RideHistory(
      distance: distance,
      longitude: longitude,
      status: status,
      modifiable: modifiable,
      amount: amount,
      currency: currency,
      date: date,
      pickupAddress: pickupAddress,
      pickupLatitude: pickupLatitude,
      pickupLongitude: pickupLongitude,
      dropLatitude: dropLatitude,
      dropLongitude: dropLongitude,
      dropAddress: dropAddress,
      rideType: rideType,
      isCancelledRide: isCancelledRide,
      rideTime: rideTime,
      vehicleType: vehicleType,
      driverId: driverId,
      driverName: driverName,
      driverImage: driverImage,
      driverRating: driverRating,
      regionName: regionName,
      engagementId: engagementId,
      userId: userId,
      manuallyEdited: manuallyEdited,
      waitTime: waitTime,
      autosStatusText: autosStatusText,
      distanceUnit: distanceUnit,
      createdAt: createdAt,
    );
  }

  RideHistory fromJson(Map<String, Object> json) {
    return RideHistory.fromJson(json);
  }
}

/// @nodoc
const $RideHistory = _$RideHistoryTearOff();

/// @nodoc
mixin _$RideHistory {
  double? get distance => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get modifiable => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_latitude')
  double? get dropLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_longitude')
  double? get dropLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_address')
  String? get dropAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancelled_ride')
  int? get isCancelledRide => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_time')
  int? get rideTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_rating')
  int? get driverRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_name')
  String? get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_id')
  int? get engagementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'manually_edited')
  int? get manuallyEdited => throw _privateConstructorUsedError;
  @JsonKey(name: 'wait_time')
  int? get waitTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'autos_status_text')
  String? get autosStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideHistoryCopyWith<RideHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideHistoryCopyWith<$Res> {
  factory $RideHistoryCopyWith(
          RideHistory value, $Res Function(RideHistory) then) =
      _$RideHistoryCopyWithImpl<$Res>;
  $Res call(
      {double? distance,
      double? longitude,
      int? status,
      int? modifiable,
      int? amount,
      String? currency,
      String? date,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'is_cancelled_ride') int? isCancelledRide,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'manually_edited') int? manuallyEdited,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'autos_status_text') String? autosStatusText,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$RideHistoryCopyWithImpl<$Res> implements $RideHistoryCopyWith<$Res> {
  _$RideHistoryCopyWithImpl(this._value, this._then);

  final RideHistory _value;
  // ignore: unused_field
  final $Res Function(RideHistory) _then;

  @override
  $Res call({
    Object? distance = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? modifiable = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? date = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? dropLatitude = freezed,
    Object? dropLongitude = freezed,
    Object? dropAddress = freezed,
    Object? rideType = freezed,
    Object? isCancelledRide = freezed,
    Object? rideTime = freezed,
    Object? vehicleType = freezed,
    Object? driverId = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? driverRating = freezed,
    Object? regionName = freezed,
    Object? engagementId = freezed,
    Object? userId = freezed,
    Object? manuallyEdited = freezed,
    Object? waitTime = freezed,
    Object? autosStatusText = freezed,
    Object? distanceUnit = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiable: modifiable == freezed
          ? _value.modifiable
          : modifiable // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLatitude: dropLatitude == freezed
          ? _value.dropLatitude
          : dropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLongitude: dropLongitude == freezed
          ? _value.dropLongitude
          : dropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropAddress: dropAddress == freezed
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      isCancelledRide: isCancelledRide == freezed
          ? _value.isCancelledRide
          : isCancelledRide // ignore: cast_nullable_to_non_nullable
              as int?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      driverRating: driverRating == freezed
          ? _value.driverRating
          : driverRating // ignore: cast_nullable_to_non_nullable
              as int?,
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuallyEdited: manuallyEdited == freezed
          ? _value.manuallyEdited
          : manuallyEdited // ignore: cast_nullable_to_non_nullable
              as int?,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      autosStatusText: autosStatusText == freezed
          ? _value.autosStatusText
          : autosStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$RideHistoryCopyWith<$Res>
    implements $RideHistoryCopyWith<$Res> {
  factory _$RideHistoryCopyWith(
          _RideHistory value, $Res Function(_RideHistory) then) =
      __$RideHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? distance,
      double? longitude,
      int? status,
      int? modifiable,
      int? amount,
      String? currency,
      String? date,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'is_cancelled_ride') int? isCancelledRide,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'manually_edited') int? manuallyEdited,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'autos_status_text') String? autosStatusText,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$RideHistoryCopyWithImpl<$Res> extends _$RideHistoryCopyWithImpl<$Res>
    implements _$RideHistoryCopyWith<$Res> {
  __$RideHistoryCopyWithImpl(
      _RideHistory _value, $Res Function(_RideHistory) _then)
      : super(_value, (v) => _then(v as _RideHistory));

  @override
  _RideHistory get _value => super._value as _RideHistory;

  @override
  $Res call({
    Object? distance = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
    Object? modifiable = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? date = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? dropLatitude = freezed,
    Object? dropLongitude = freezed,
    Object? dropAddress = freezed,
    Object? rideType = freezed,
    Object? isCancelledRide = freezed,
    Object? rideTime = freezed,
    Object? vehicleType = freezed,
    Object? driverId = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? driverRating = freezed,
    Object? regionName = freezed,
    Object? engagementId = freezed,
    Object? userId = freezed,
    Object? manuallyEdited = freezed,
    Object? waitTime = freezed,
    Object? autosStatusText = freezed,
    Object? distanceUnit = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_RideHistory(
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      modifiable: modifiable == freezed
          ? _value.modifiable
          : modifiable // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLatitude: dropLatitude == freezed
          ? _value.dropLatitude
          : dropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLongitude: dropLongitude == freezed
          ? _value.dropLongitude
          : dropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropAddress: dropAddress == freezed
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      isCancelledRide: isCancelledRide == freezed
          ? _value.isCancelledRide
          : isCancelledRide // ignore: cast_nullable_to_non_nullable
              as int?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      driverRating: driverRating == freezed
          ? _value.driverRating
          : driverRating // ignore: cast_nullable_to_non_nullable
              as int?,
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      manuallyEdited: manuallyEdited == freezed
          ? _value.manuallyEdited
          : manuallyEdited // ignore: cast_nullable_to_non_nullable
              as int?,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      autosStatusText: autosStatusText == freezed
          ? _value.autosStatusText
          : autosStatusText // ignore: cast_nullable_to_non_nullable
              as String?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideHistory implements _RideHistory {
  _$_RideHistory(
      {this.distance,
      this.longitude,
      this.status,
      this.modifiable,
      this.amount,
      this.currency,
      this.date,
      @JsonKey(name: 'pickup_address') this.pickupAddress,
      @JsonKey(name: 'pickup_latitude') this.pickupLatitude,
      @JsonKey(name: 'pickup_longitude') this.pickupLongitude,
      @JsonKey(name: 'drop_latitude') this.dropLatitude,
      @JsonKey(name: 'drop_longitude') this.dropLongitude,
      @JsonKey(name: 'drop_address') this.dropAddress,
      @JsonKey(name: 'ride_type') this.rideType,
      @JsonKey(name: 'is_cancelled_ride') this.isCancelledRide,
      @JsonKey(name: 'ride_time') this.rideTime,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'driver_image') this.driverImage,
      @JsonKey(name: 'driver_rating') this.driverRating,
      @JsonKey(name: 'region_name') this.regionName,
      @JsonKey(name: 'engagement_id') this.engagementId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'manually_edited') this.manuallyEdited,
      @JsonKey(name: 'wait_time') this.waitTime,
      @JsonKey(name: 'autos_status_text') this.autosStatusText,
      @JsonKey(name: 'distance_unit') this.distanceUnit,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_RideHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_RideHistoryFromJson(json);

  @override
  final double? distance;
  @override
  final double? longitude;
  @override
  final int? status;
  @override
  final int? modifiable;
  @override
  final int? amount;
  @override
  final String? currency;
  @override
  final String? date;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'pickup_latitude')
  final double? pickupLatitude;
  @override
  @JsonKey(name: 'pickup_longitude')
  final double? pickupLongitude;
  @override
  @JsonKey(name: 'drop_latitude')
  final double? dropLatitude;
  @override
  @JsonKey(name: 'drop_longitude')
  final double? dropLongitude;
  @override
  @JsonKey(name: 'drop_address')
  final String? dropAddress;
  @override
  @JsonKey(name: 'ride_type')
  final int? rideType;
  @override
  @JsonKey(name: 'is_cancelled_ride')
  final int? isCancelledRide;
  @override
  @JsonKey(name: 'ride_time')
  final int? rideTime;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'driver_image')
  final String? driverImage;
  @override
  @JsonKey(name: 'driver_rating')
  final int? driverRating;
  @override
  @JsonKey(name: 'region_name')
  final String? regionName;
  @override
  @JsonKey(name: 'engagement_id')
  final int? engagementId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'manually_edited')
  final int? manuallyEdited;
  @override
  @JsonKey(name: 'wait_time')
  final int? waitTime;
  @override
  @JsonKey(name: 'autos_status_text')
  final String? autosStatusText;
  @override
  @JsonKey(name: 'distance_unit')
  final String? distanceUnit;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RideHistory(distance: $distance, longitude: $longitude, status: $status, modifiable: $modifiable, amount: $amount, currency: $currency, date: $date, pickupAddress: $pickupAddress, pickupLatitude: $pickupLatitude, pickupLongitude: $pickupLongitude, dropLatitude: $dropLatitude, dropLongitude: $dropLongitude, dropAddress: $dropAddress, rideType: $rideType, isCancelledRide: $isCancelledRide, rideTime: $rideTime, vehicleType: $vehicleType, driverId: $driverId, driverName: $driverName, driverImage: $driverImage, driverRating: $driverRating, regionName: $regionName, engagementId: $engagementId, userId: $userId, manuallyEdited: $manuallyEdited, waitTime: $waitTime, autosStatusText: $autosStatusText, distanceUnit: $distanceUnit, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RideHistory &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.modifiable, modifiable) ||
                const DeepCollectionEquality()
                    .equals(other.modifiable, modifiable)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.pickupAddress, pickupAddress) ||
                const DeepCollectionEquality()
                    .equals(other.pickupAddress, pickupAddress)) &&
            (identical(other.pickupLatitude, pickupLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLatitude, pickupLatitude)) &&
            (identical(other.pickupLongitude, pickupLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLongitude, pickupLongitude)) &&
            (identical(other.dropLatitude, dropLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.dropLatitude, dropLatitude)) &&
            (identical(other.dropLongitude, dropLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.dropLongitude, dropLongitude)) &&
            (identical(other.dropAddress, dropAddress) ||
                const DeepCollectionEquality()
                    .equals(other.dropAddress, dropAddress)) &&
            (identical(other.rideType, rideType) ||
                const DeepCollectionEquality()
                    .equals(other.rideType, rideType)) &&
            (identical(other.isCancelledRide, isCancelledRide) ||
                const DeepCollectionEquality()
                    .equals(other.isCancelledRide, isCancelledRide)) &&
            (identical(other.rideTime, rideTime) ||
                const DeepCollectionEquality()
                    .equals(other.rideTime, rideTime)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.driverImage, driverImage) ||
                const DeepCollectionEquality()
                    .equals(other.driverImage, driverImage)) &&
            (identical(other.driverRating, driverRating) ||
                const DeepCollectionEquality()
                    .equals(other.driverRating, driverRating)) &&
            (identical(other.regionName, regionName) ||
                const DeepCollectionEquality()
                    .equals(other.regionName, regionName)) &&
            (identical(other.engagementId, engagementId) ||
                const DeepCollectionEquality()
                    .equals(other.engagementId, engagementId)) &&
            (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.manuallyEdited, manuallyEdited) || const DeepCollectionEquality().equals(other.manuallyEdited, manuallyEdited)) &&
            (identical(other.waitTime, waitTime) || const DeepCollectionEquality().equals(other.waitTime, waitTime)) &&
            (identical(other.autosStatusText, autosStatusText) || const DeepCollectionEquality().equals(other.autosStatusText, autosStatusText)) &&
            (identical(other.distanceUnit, distanceUnit) || const DeepCollectionEquality().equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(modifiable) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(pickupAddress) ^
      const DeepCollectionEquality().hash(pickupLatitude) ^
      const DeepCollectionEquality().hash(pickupLongitude) ^
      const DeepCollectionEquality().hash(dropLatitude) ^
      const DeepCollectionEquality().hash(dropLongitude) ^
      const DeepCollectionEquality().hash(dropAddress) ^
      const DeepCollectionEquality().hash(rideType) ^
      const DeepCollectionEquality().hash(isCancelledRide) ^
      const DeepCollectionEquality().hash(rideTime) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(driverImage) ^
      const DeepCollectionEquality().hash(driverRating) ^
      const DeepCollectionEquality().hash(regionName) ^
      const DeepCollectionEquality().hash(engagementId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(manuallyEdited) ^
      const DeepCollectionEquality().hash(waitTime) ^
      const DeepCollectionEquality().hash(autosStatusText) ^
      const DeepCollectionEquality().hash(distanceUnit) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$RideHistoryCopyWith<_RideHistory> get copyWith =>
      __$RideHistoryCopyWithImpl<_RideHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RideHistoryToJson(this);
  }
}

abstract class _RideHistory implements RideHistory {
  factory _RideHistory(
      {double? distance,
      double? longitude,
      int? status,
      int? modifiable,
      int? amount,
      String? currency,
      String? date,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'is_cancelled_ride') int? isCancelledRide,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'region_name') String? regionName,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'manually_edited') int? manuallyEdited,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'autos_status_text') String? autosStatusText,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'created_at') DateTime? createdAt}) = _$_RideHistory;

  factory _RideHistory.fromJson(Map<String, dynamic> json) =
      _$_RideHistory.fromJson;

  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  int? get modifiable => throw _privateConstructorUsedError;
  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_latitude')
  double? get dropLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_longitude')
  double? get dropLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_address')
  String? get dropAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_cancelled_ride')
  int? get isCancelledRide => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_time')
  int? get rideTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_rating')
  int? get driverRating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'region_name')
  String? get regionName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'engagement_id')
  int? get engagementId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'manually_edited')
  int? get manuallyEdited => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wait_time')
  int? get waitTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'autos_status_text')
  String? get autosStatusText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RideHistoryCopyWith<_RideHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

RideSummary _$RideSummaryFromJson(Map<String, dynamic> json) {
  return _RideSummary.fromJson(json);
}

/// @nodoc
class _$RideSummaryTearOff {
  const _$RideSummaryTearOff();

  _RideSummary call(
      {int? flag,
      double? distance,
      int? status,
      String? currency,
      int? fare,
      String? error,
      String? message,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'pickup_time') String? pickupTime,
      @JsonKey(name: 'drop_time') String? dropTime,
      @JsonKey(name: 'ride_date') String? rideDate,
      @JsonKey(name: 'accept_time') String? acceptTime,
      @JsonKey(name: 'engagement_date') String? engagementDate,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'to_pay') int? toPay,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'cancellation_charges') int? cancellationCharges,
      @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'fare_factor') int? fareFactor,
      @JsonKey(name: 'jugnoo_balance') int? balance,
      @JsonKey(name: 'total_rides_as_user') int? totalRides,
      @JsonKey(name: 'created_at') DateTime? createdAt}) {
    return _RideSummary(
      flag: flag,
      distance: distance,
      status: status,
      currency: currency,
      fare: fare,
      error: error,
      message: message,
      pickupAddress: pickupAddress,
      pickupLatitude: pickupLatitude,
      pickupLongitude: pickupLongitude,
      dropLatitude: dropLatitude,
      dropLongitude: dropLongitude,
      dropAddress: dropAddress,
      pickupTime: pickupTime,
      dropTime: dropTime,
      rideDate: rideDate,
      acceptTime: acceptTime,
      engagementDate: engagementDate,
      rideType: rideType,
      toPay: toPay,
      rideTime: rideTime,
      vehicleType: vehicleType,
      driverId: driverId,
      driverRating: driverRating,
      driverName: driverName,
      driverImage: driverImage,
      phoneNo: phoneNo,
      engagementId: engagementId,
      userId: userId,
      waitTime: waitTime,
      distanceUnit: distanceUnit,
      cancellationCharges: cancellationCharges,
      isCorporateRide: isCorporateRide,
      baseFare: baseFare,
      fareFactor: fareFactor,
      balance: balance,
      totalRides: totalRides,
      createdAt: createdAt,
    );
  }

  RideSummary fromJson(Map<String, Object> json) {
    return RideSummary.fromJson(json);
  }
}

/// @nodoc
const $RideSummary = _$RideSummaryTearOff();

/// @nodoc
mixin _$RideSummary {
  int? get flag => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  int? get fare => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_latitude')
  double? get dropLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_longitude')
  double? get dropLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_address')
  String? get dropAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_time')
  String? get pickupTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'drop_time')
  String? get dropTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_date')
  String? get rideDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'accept_time')
  String? get acceptTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_date')
  String? get engagementDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_pay')
  int? get toPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'ride_time')
  int? get rideTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_rating')
  int? get driverRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_id')
  int? get engagementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'wait_time')
  int? get waitTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_charges')
  int? get cancellationCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_corporate_ride')
  int? get isCorporateRide => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_factor')
  int? get fareFactor => throw _privateConstructorUsedError;
  @JsonKey(name: 'jugnoo_balance')
  int? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_rides_as_user')
  int? get totalRides => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideSummaryCopyWith<RideSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideSummaryCopyWith<$Res> {
  factory $RideSummaryCopyWith(
          RideSummary value, $Res Function(RideSummary) then) =
      _$RideSummaryCopyWithImpl<$Res>;
  $Res call(
      {int? flag,
      double? distance,
      int? status,
      String? currency,
      int? fare,
      String? error,
      String? message,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'pickup_time') String? pickupTime,
      @JsonKey(name: 'drop_time') String? dropTime,
      @JsonKey(name: 'ride_date') String? rideDate,
      @JsonKey(name: 'accept_time') String? acceptTime,
      @JsonKey(name: 'engagement_date') String? engagementDate,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'to_pay') int? toPay,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'cancellation_charges') int? cancellationCharges,
      @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'fare_factor') int? fareFactor,
      @JsonKey(name: 'jugnoo_balance') int? balance,
      @JsonKey(name: 'total_rides_as_user') int? totalRides,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$RideSummaryCopyWithImpl<$Res> implements $RideSummaryCopyWith<$Res> {
  _$RideSummaryCopyWithImpl(this._value, this._then);

  final RideSummary _value;
  // ignore: unused_field
  final $Res Function(RideSummary) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? distance = freezed,
    Object? status = freezed,
    Object? currency = freezed,
    Object? fare = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? dropLatitude = freezed,
    Object? dropLongitude = freezed,
    Object? dropAddress = freezed,
    Object? pickupTime = freezed,
    Object? dropTime = freezed,
    Object? rideDate = freezed,
    Object? acceptTime = freezed,
    Object? engagementDate = freezed,
    Object? rideType = freezed,
    Object? toPay = freezed,
    Object? rideTime = freezed,
    Object? vehicleType = freezed,
    Object? driverId = freezed,
    Object? driverRating = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? phoneNo = freezed,
    Object? engagementId = freezed,
    Object? userId = freezed,
    Object? waitTime = freezed,
    Object? distanceUnit = freezed,
    Object? cancellationCharges = freezed,
    Object? isCorporateRide = freezed,
    Object? baseFare = freezed,
    Object? fareFactor = freezed,
    Object? balance = freezed,
    Object? totalRides = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLatitude: dropLatitude == freezed
          ? _value.dropLatitude
          : dropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLongitude: dropLongitude == freezed
          ? _value.dropLongitude
          : dropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropAddress: dropAddress == freezed
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as String?,
      dropTime: dropTime == freezed
          ? _value.dropTime
          : dropTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rideDate: rideDate == freezed
          ? _value.rideDate
          : rideDate // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTime: acceptTime == freezed
          ? _value.acceptTime
          : acceptTime // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementDate: engagementDate == freezed
          ? _value.engagementDate
          : engagementDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as int?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverRating: driverRating == freezed
          ? _value.driverRating
          : driverRating // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationCharges: cancellationCharges == freezed
          ? _value.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      isCorporateRide: isCorporateRide == freezed
          ? _value.isCorporateRide
          : isCorporateRide // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFare: baseFare == freezed
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      fareFactor: fareFactor == freezed
          ? _value.fareFactor
          : fareFactor // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRides: totalRides == freezed
          ? _value.totalRides
          : totalRides // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$RideSummaryCopyWith<$Res>
    implements $RideSummaryCopyWith<$Res> {
  factory _$RideSummaryCopyWith(
          _RideSummary value, $Res Function(_RideSummary) then) =
      __$RideSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? flag,
      double? distance,
      int? status,
      String? currency,
      int? fare,
      String? error,
      String? message,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'pickup_time') String? pickupTime,
      @JsonKey(name: 'drop_time') String? dropTime,
      @JsonKey(name: 'ride_date') String? rideDate,
      @JsonKey(name: 'accept_time') String? acceptTime,
      @JsonKey(name: 'engagement_date') String? engagementDate,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'to_pay') int? toPay,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'cancellation_charges') int? cancellationCharges,
      @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'fare_factor') int? fareFactor,
      @JsonKey(name: 'jugnoo_balance') int? balance,
      @JsonKey(name: 'total_rides_as_user') int? totalRides,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$RideSummaryCopyWithImpl<$Res> extends _$RideSummaryCopyWithImpl<$Res>
    implements _$RideSummaryCopyWith<$Res> {
  __$RideSummaryCopyWithImpl(
      _RideSummary _value, $Res Function(_RideSummary) _then)
      : super(_value, (v) => _then(v as _RideSummary));

  @override
  _RideSummary get _value => super._value as _RideSummary;

  @override
  $Res call({
    Object? flag = freezed,
    Object? distance = freezed,
    Object? status = freezed,
    Object? currency = freezed,
    Object? fare = freezed,
    Object? error = freezed,
    Object? message = freezed,
    Object? pickupAddress = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? dropLatitude = freezed,
    Object? dropLongitude = freezed,
    Object? dropAddress = freezed,
    Object? pickupTime = freezed,
    Object? dropTime = freezed,
    Object? rideDate = freezed,
    Object? acceptTime = freezed,
    Object? engagementDate = freezed,
    Object? rideType = freezed,
    Object? toPay = freezed,
    Object? rideTime = freezed,
    Object? vehicleType = freezed,
    Object? driverId = freezed,
    Object? driverRating = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? phoneNo = freezed,
    Object? engagementId = freezed,
    Object? userId = freezed,
    Object? waitTime = freezed,
    Object? distanceUnit = freezed,
    Object? cancellationCharges = freezed,
    Object? isCorporateRide = freezed,
    Object? baseFare = freezed,
    Object? fareFactor = freezed,
    Object? balance = freezed,
    Object? totalRides = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_RideSummary(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fare: fare == freezed
          ? _value.fare
          : fare // ignore: cast_nullable_to_non_nullable
              as int?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupAddress: pickupAddress == freezed
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLatitude: dropLatitude == freezed
          ? _value.dropLatitude
          : dropLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropLongitude: dropLongitude == freezed
          ? _value.dropLongitude
          : dropLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      dropAddress: dropAddress == freezed
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupTime: pickupTime == freezed
          ? _value.pickupTime
          : pickupTime // ignore: cast_nullable_to_non_nullable
              as String?,
      dropTime: dropTime == freezed
          ? _value.dropTime
          : dropTime // ignore: cast_nullable_to_non_nullable
              as String?,
      rideDate: rideDate == freezed
          ? _value.rideDate
          : rideDate // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptTime: acceptTime == freezed
          ? _value.acceptTime
          : acceptTime // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementDate: engagementDate == freezed
          ? _value.engagementDate
          : engagementDate // ignore: cast_nullable_to_non_nullable
              as String?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as int?,
      toPay: toPay == freezed
          ? _value.toPay
          : toPay // ignore: cast_nullable_to_non_nullable
              as int?,
      rideTime: rideTime == freezed
          ? _value.rideTime
          : rideTime // ignore: cast_nullable_to_non_nullable
              as int?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverRating: driverRating == freezed
          ? _value.driverRating
          : driverRating // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementId: engagementId == freezed
          ? _value.engagementId
          : engagementId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      waitTime: waitTime == freezed
          ? _value.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationCharges: cancellationCharges == freezed
          ? _value.cancellationCharges
          : cancellationCharges // ignore: cast_nullable_to_non_nullable
              as int?,
      isCorporateRide: isCorporateRide == freezed
          ? _value.isCorporateRide
          : isCorporateRide // ignore: cast_nullable_to_non_nullable
              as int?,
      baseFare: baseFare == freezed
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as int?,
      fareFactor: fareFactor == freezed
          ? _value.fareFactor
          : fareFactor // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRides: totalRides == freezed
          ? _value.totalRides
          : totalRides // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideSummary implements _RideSummary {
  _$_RideSummary(
      {this.flag,
      this.distance,
      this.status,
      this.currency,
      this.fare,
      this.error,
      this.message,
      @JsonKey(name: 'pickup_address') this.pickupAddress,
      @JsonKey(name: 'pickup_latitude') this.pickupLatitude,
      @JsonKey(name: 'pickup_longitude') this.pickupLongitude,
      @JsonKey(name: 'drop_latitude') this.dropLatitude,
      @JsonKey(name: 'drop_longitude') this.dropLongitude,
      @JsonKey(name: 'drop_address') this.dropAddress,
      @JsonKey(name: 'pickup_time') this.pickupTime,
      @JsonKey(name: 'drop_time') this.dropTime,
      @JsonKey(name: 'ride_date') this.rideDate,
      @JsonKey(name: 'accept_time') this.acceptTime,
      @JsonKey(name: 'engagement_date') this.engagementDate,
      @JsonKey(name: 'ride_type') this.rideType,
      @JsonKey(name: 'to_pay') this.toPay,
      @JsonKey(name: 'ride_time') this.rideTime,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'driver_rating') this.driverRating,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'driver_image') this.driverImage,
      @JsonKey(name: 'phone_no') this.phoneNo,
      @JsonKey(name: 'engagement_id') this.engagementId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'wait_time') this.waitTime,
      @JsonKey(name: 'distance_unit') this.distanceUnit,
      @JsonKey(name: 'cancellation_charges') this.cancellationCharges,
      @JsonKey(name: 'is_corporate_ride') this.isCorporateRide,
      @JsonKey(name: 'base_fare') this.baseFare,
      @JsonKey(name: 'fare_factor') this.fareFactor,
      @JsonKey(name: 'jugnoo_balance') this.balance,
      @JsonKey(name: 'total_rides_as_user') this.totalRides,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_RideSummary.fromJson(Map<String, dynamic> json) =>
      _$_$_RideSummaryFromJson(json);

  @override
  final int? flag;
  @override
  final double? distance;
  @override
  final int? status;
  @override
  final String? currency;
  @override
  final int? fare;
  @override
  final String? error;
  @override
  final String? message;
  @override
  @JsonKey(name: 'pickup_address')
  final String? pickupAddress;
  @override
  @JsonKey(name: 'pickup_latitude')
  final double? pickupLatitude;
  @override
  @JsonKey(name: 'pickup_longitude')
  final double? pickupLongitude;
  @override
  @JsonKey(name: 'drop_latitude')
  final double? dropLatitude;
  @override
  @JsonKey(name: 'drop_longitude')
  final double? dropLongitude;
  @override
  @JsonKey(name: 'drop_address')
  final String? dropAddress;
  @override
  @JsonKey(name: 'pickup_time')
  final String? pickupTime;
  @override
  @JsonKey(name: 'drop_time')
  final String? dropTime;
  @override
  @JsonKey(name: 'ride_date')
  final String? rideDate;
  @override
  @JsonKey(name: 'accept_time')
  final String? acceptTime;
  @override
  @JsonKey(name: 'engagement_date')
  final String? engagementDate;
  @override
  @JsonKey(name: 'ride_type')
  final int? rideType;
  @override
  @JsonKey(name: 'to_pay')
  final int? toPay;
  @override
  @JsonKey(name: 'ride_time')
  final int? rideTime;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'driver_rating')
  final int? driverRating;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'driver_image')
  final String? driverImage;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  @JsonKey(name: 'engagement_id')
  final int? engagementId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'wait_time')
  final int? waitTime;
  @override
  @JsonKey(name: 'distance_unit')
  final String? distanceUnit;
  @override
  @JsonKey(name: 'cancellation_charges')
  final int? cancellationCharges;
  @override
  @JsonKey(name: 'is_corporate_ride')
  final int? isCorporateRide;
  @override
  @JsonKey(name: 'base_fare')
  final int? baseFare;
  @override
  @JsonKey(name: 'fare_factor')
  final int? fareFactor;
  @override
  @JsonKey(name: 'jugnoo_balance')
  final int? balance;
  @override
  @JsonKey(name: 'total_rides_as_user')
  final int? totalRides;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'RideSummary(flag: $flag, distance: $distance, status: $status, currency: $currency, fare: $fare, error: $error, message: $message, pickupAddress: $pickupAddress, pickupLatitude: $pickupLatitude, pickupLongitude: $pickupLongitude, dropLatitude: $dropLatitude, dropLongitude: $dropLongitude, dropAddress: $dropAddress, pickupTime: $pickupTime, dropTime: $dropTime, rideDate: $rideDate, acceptTime: $acceptTime, engagementDate: $engagementDate, rideType: $rideType, toPay: $toPay, rideTime: $rideTime, vehicleType: $vehicleType, driverId: $driverId, driverRating: $driverRating, driverName: $driverName, driverImage: $driverImage, phoneNo: $phoneNo, engagementId: $engagementId, userId: $userId, waitTime: $waitTime, distanceUnit: $distanceUnit, cancellationCharges: $cancellationCharges, isCorporateRide: $isCorporateRide, baseFare: $baseFare, fareFactor: $fareFactor, balance: $balance, totalRides: $totalRides, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RideSummary &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.fare, fare) ||
                const DeepCollectionEquality().equals(other.fare, fare)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.pickupAddress, pickupAddress) ||
                const DeepCollectionEquality()
                    .equals(other.pickupAddress, pickupAddress)) &&
            (identical(other.pickupLatitude, pickupLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLatitude, pickupLatitude)) &&
            (identical(other.pickupLongitude, pickupLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLongitude, pickupLongitude)) &&
            (identical(other.dropLatitude, dropLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.dropLatitude, dropLatitude)) &&
            (identical(other.dropLongitude, dropLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.dropLongitude, dropLongitude)) &&
            (identical(other.dropAddress, dropAddress) ||
                const DeepCollectionEquality()
                    .equals(other.dropAddress, dropAddress)) &&
            (identical(other.pickupTime, pickupTime) ||
                const DeepCollectionEquality()
                    .equals(other.pickupTime, pickupTime)) &&
            (identical(other.dropTime, dropTime) ||
                const DeepCollectionEquality()
                    .equals(other.dropTime, dropTime)) &&
            (identical(other.rideDate, rideDate) ||
                const DeepCollectionEquality()
                    .equals(other.rideDate, rideDate)) &&
            (identical(other.acceptTime, acceptTime) ||
                const DeepCollectionEquality()
                    .equals(other.acceptTime, acceptTime)) &&
            (identical(other.engagementDate, engagementDate) ||
                const DeepCollectionEquality()
                    .equals(other.engagementDate, engagementDate)) &&
            (identical(other.rideType, rideType) ||
                const DeepCollectionEquality()
                    .equals(other.rideType, rideType)) &&
            (identical(other.toPay, toPay) ||
                const DeepCollectionEquality().equals(other.toPay, toPay)) &&
            (identical(other.rideTime, rideTime) ||
                const DeepCollectionEquality()
                    .equals(other.rideTime, rideTime)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.driverRating, driverRating) ||
                const DeepCollectionEquality()
                    .equals(other.driverRating, driverRating)) &&
            (identical(other.driverName, driverName) || const DeepCollectionEquality().equals(other.driverName, driverName)) &&
            (identical(other.driverImage, driverImage) || const DeepCollectionEquality().equals(other.driverImage, driverImage)) &&
            (identical(other.phoneNo, phoneNo) || const DeepCollectionEquality().equals(other.phoneNo, phoneNo)) &&
            (identical(other.engagementId, engagementId) || const DeepCollectionEquality().equals(other.engagementId, engagementId)) &&
            (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.waitTime, waitTime) || const DeepCollectionEquality().equals(other.waitTime, waitTime)) &&
            (identical(other.distanceUnit, distanceUnit) || const DeepCollectionEquality().equals(other.distanceUnit, distanceUnit)) &&
            (identical(other.cancellationCharges, cancellationCharges) || const DeepCollectionEquality().equals(other.cancellationCharges, cancellationCharges)) &&
            (identical(other.isCorporateRide, isCorporateRide) || const DeepCollectionEquality().equals(other.isCorporateRide, isCorporateRide)) &&
            (identical(other.baseFare, baseFare) || const DeepCollectionEquality().equals(other.baseFare, baseFare)) &&
            (identical(other.fareFactor, fareFactor) || const DeepCollectionEquality().equals(other.fareFactor, fareFactor)) &&
            (identical(other.balance, balance) || const DeepCollectionEquality().equals(other.balance, balance)) &&
            (identical(other.totalRides, totalRides) || const DeepCollectionEquality().equals(other.totalRides, totalRides)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(fare) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(pickupAddress) ^
      const DeepCollectionEquality().hash(pickupLatitude) ^
      const DeepCollectionEquality().hash(pickupLongitude) ^
      const DeepCollectionEquality().hash(dropLatitude) ^
      const DeepCollectionEquality().hash(dropLongitude) ^
      const DeepCollectionEquality().hash(dropAddress) ^
      const DeepCollectionEquality().hash(pickupTime) ^
      const DeepCollectionEquality().hash(dropTime) ^
      const DeepCollectionEquality().hash(rideDate) ^
      const DeepCollectionEquality().hash(acceptTime) ^
      const DeepCollectionEquality().hash(engagementDate) ^
      const DeepCollectionEquality().hash(rideType) ^
      const DeepCollectionEquality().hash(toPay) ^
      const DeepCollectionEquality().hash(rideTime) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(driverRating) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(driverImage) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(engagementId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(waitTime) ^
      const DeepCollectionEquality().hash(distanceUnit) ^
      const DeepCollectionEquality().hash(cancellationCharges) ^
      const DeepCollectionEquality().hash(isCorporateRide) ^
      const DeepCollectionEquality().hash(baseFare) ^
      const DeepCollectionEquality().hash(fareFactor) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(totalRides) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$RideSummaryCopyWith<_RideSummary> get copyWith =>
      __$RideSummaryCopyWithImpl<_RideSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RideSummaryToJson(this);
  }
}

abstract class _RideSummary implements RideSummary {
  factory _RideSummary(
      {int? flag,
      double? distance,
      int? status,
      String? currency,
      int? fare,
      String? error,
      String? message,
      @JsonKey(name: 'pickup_address') String? pickupAddress,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'drop_latitude') double? dropLatitude,
      @JsonKey(name: 'drop_longitude') double? dropLongitude,
      @JsonKey(name: 'drop_address') String? dropAddress,
      @JsonKey(name: 'pickup_time') String? pickupTime,
      @JsonKey(name: 'drop_time') String? dropTime,
      @JsonKey(name: 'ride_date') String? rideDate,
      @JsonKey(name: 'accept_time') String? acceptTime,
      @JsonKey(name: 'engagement_date') String? engagementDate,
      @JsonKey(name: 'ride_type') int? rideType,
      @JsonKey(name: 'to_pay') int? toPay,
      @JsonKey(name: 'ride_time') int? rideTime,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'driver_rating') int? driverRating,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'engagement_id') int? engagementId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'wait_time') int? waitTime,
      @JsonKey(name: 'distance_unit') String? distanceUnit,
      @JsonKey(name: 'cancellation_charges') int? cancellationCharges,
      @JsonKey(name: 'is_corporate_ride') int? isCorporateRide,
      @JsonKey(name: 'base_fare') int? baseFare,
      @JsonKey(name: 'fare_factor') int? fareFactor,
      @JsonKey(name: 'jugnoo_balance') int? balance,
      @JsonKey(name: 'total_rides_as_user') int? totalRides,
      @JsonKey(name: 'created_at') DateTime? createdAt}) = _$_RideSummary;

  factory _RideSummary.fromJson(Map<String, dynamic> json) =
      _$_RideSummary.fromJson;

  @override
  int? get flag => throw _privateConstructorUsedError;
  @override
  double? get distance => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  int? get fare => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_address')
  String? get pickupAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_latitude')
  double? get dropLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_longitude')
  double? get dropLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_address')
  String? get dropAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_time')
  String? get pickupTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'drop_time')
  String? get dropTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_date')
  String? get rideDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'accept_time')
  String? get acceptTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'engagement_date')
  String? get engagementDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_type')
  int? get rideType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to_pay')
  int? get toPay => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ride_time')
  int? get rideTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_rating')
  int? get driverRating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'engagement_id')
  int? get engagementId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wait_time')
  int? get waitTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cancellation_charges')
  int? get cancellationCharges => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_corporate_ride')
  int? get isCorporateRide => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'base_fare')
  int? get baseFare => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_factor')
  int? get fareFactor => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'jugnoo_balance')
  int? get balance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_rides_as_user')
  int? get totalRides => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RideSummaryCopyWith<_RideSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

Corporate _$CorporateFromJson(Map<String, dynamic> json) {
  return _Corporate.fromJson(json);
}

/// @nodoc
class _$CorporateTearOff {
  const _$CorporateTearOff();

  _Corporate call(
      {@JsonKey(name: 'business_id') int? businessId,
      @JsonKey(name: 'partner_name') String? partnerName,
      @JsonKey(name: 'restricted_sub_regions') String? restrictedSubRegions}) {
    return _Corporate(
      businessId: businessId,
      partnerName: partnerName,
      restrictedSubRegions: restrictedSubRegions,
    );
  }

  Corporate fromJson(Map<String, Object> json) {
    return Corporate.fromJson(json);
  }
}

/// @nodoc
const $Corporate = _$CorporateTearOff();

/// @nodoc
mixin _$Corporate {
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_name')
  String? get partnerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'restricted_sub_regions')
  String? get restrictedSubRegions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CorporateCopyWith<Corporate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CorporateCopyWith<$Res> {
  factory $CorporateCopyWith(Corporate value, $Res Function(Corporate) then) =
      _$CorporateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'business_id') int? businessId,
      @JsonKey(name: 'partner_name') String? partnerName,
      @JsonKey(name: 'restricted_sub_regions') String? restrictedSubRegions});
}

/// @nodoc
class _$CorporateCopyWithImpl<$Res> implements $CorporateCopyWith<$Res> {
  _$CorporateCopyWithImpl(this._value, this._then);

  final Corporate _value;
  // ignore: unused_field
  final $Res Function(Corporate) _then;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? partnerName = freezed,
    Object? restrictedSubRegions = freezed,
  }) {
    return _then(_value.copyWith(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerName: partnerName == freezed
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedSubRegions: restrictedSubRegions == freezed
          ? _value.restrictedSubRegions
          : restrictedSubRegions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CorporateCopyWith<$Res> implements $CorporateCopyWith<$Res> {
  factory _$CorporateCopyWith(
          _Corporate value, $Res Function(_Corporate) then) =
      __$CorporateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'business_id') int? businessId,
      @JsonKey(name: 'partner_name') String? partnerName,
      @JsonKey(name: 'restricted_sub_regions') String? restrictedSubRegions});
}

/// @nodoc
class __$CorporateCopyWithImpl<$Res> extends _$CorporateCopyWithImpl<$Res>
    implements _$CorporateCopyWith<$Res> {
  __$CorporateCopyWithImpl(_Corporate _value, $Res Function(_Corporate) _then)
      : super(_value, (v) => _then(v as _Corporate));

  @override
  _Corporate get _value => super._value as _Corporate;

  @override
  $Res call({
    Object? businessId = freezed,
    Object? partnerName = freezed,
    Object? restrictedSubRegions = freezed,
  }) {
    return _then(_Corporate(
      businessId: businessId == freezed
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerName: partnerName == freezed
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedSubRegions: restrictedSubRegions == freezed
          ? _value.restrictedSubRegions
          : restrictedSubRegions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Corporate implements _Corporate {
  _$_Corporate(
      {@JsonKey(name: 'business_id') this.businessId,
      @JsonKey(name: 'partner_name') this.partnerName,
      @JsonKey(name: 'restricted_sub_regions') this.restrictedSubRegions});

  factory _$_Corporate.fromJson(Map<String, dynamic> json) =>
      _$_$_CorporateFromJson(json);

  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  @JsonKey(name: 'partner_name')
  final String? partnerName;
  @override
  @JsonKey(name: 'restricted_sub_regions')
  final String? restrictedSubRegions;

  @override
  String toString() {
    return 'Corporate(businessId: $businessId, partnerName: $partnerName, restrictedSubRegions: $restrictedSubRegions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Corporate &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)) &&
            (identical(other.partnerName, partnerName) ||
                const DeepCollectionEquality()
                    .equals(other.partnerName, partnerName)) &&
            (identical(other.restrictedSubRegions, restrictedSubRegions) ||
                const DeepCollectionEquality()
                    .equals(other.restrictedSubRegions, restrictedSubRegions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(businessId) ^
      const DeepCollectionEquality().hash(partnerName) ^
      const DeepCollectionEquality().hash(restrictedSubRegions);

  @JsonKey(ignore: true)
  @override
  _$CorporateCopyWith<_Corporate> get copyWith =>
      __$CorporateCopyWithImpl<_Corporate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CorporateToJson(this);
  }
}

abstract class _Corporate implements Corporate {
  factory _Corporate(
      {@JsonKey(name: 'business_id')
          int? businessId,
      @JsonKey(name: 'partner_name')
          String? partnerName,
      @JsonKey(name: 'restricted_sub_regions')
          String? restrictedSubRegions}) = _$_Corporate;

  factory _Corporate.fromJson(Map<String, dynamic> json) =
      _$_Corporate.fromJson;

  @override
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'partner_name')
  String? get partnerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'restricted_sub_regions')
  String? get restrictedSubRegions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CorporateCopyWith<_Corporate> get copyWith =>
      throw _privateConstructorUsedError;
}

EmergencyContact _$EmergencyContactFromJson(Map<String, dynamic> json) {
  return _EmergencyContact.fromJson(json);
}

/// @nodoc
class _$EmergencyContactTearOff {
  const _$EmergencyContactTearOff();

  _EmergencyContact call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'requested_on') DateTime? requestedOn,
      @JsonKey(name: 'verification_status') int? verificationStatus}) {
    return _EmergencyContact(
      id: id,
      name: name,
      email: email,
      userId: userId,
      phoneNo: phoneNo,
      countryCode: countryCode,
      requestedOn: requestedOn,
      verificationStatus: verificationStatus,
    );
  }

  EmergencyContact fromJson(Map<String, Object> json) {
    return EmergencyContact.fromJson(json);
  }
}

/// @nodoc
const $EmergencyContact = _$EmergencyContactTearOff();

/// @nodoc
mixin _$EmergencyContact {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_on')
  DateTime? get requestedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_status')
  int? get verificationStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmergencyContactCopyWith<EmergencyContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactCopyWith<$Res> {
  factory $EmergencyContactCopyWith(
          EmergencyContact value, $Res Function(EmergencyContact) then) =
      _$EmergencyContactCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'requested_on') DateTime? requestedOn,
      @JsonKey(name: 'verification_status') int? verificationStatus});
}

/// @nodoc
class _$EmergencyContactCopyWithImpl<$Res>
    implements $EmergencyContactCopyWith<$Res> {
  _$EmergencyContactCopyWithImpl(this._value, this._then);

  final EmergencyContact _value;
  // ignore: unused_field
  final $Res Function(EmergencyContact) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? phoneNo = freezed,
    Object? countryCode = freezed,
    Object? requestedOn = freezed,
    Object? verificationStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedOn: requestedOn == freezed
          ? _value.requestedOn
          : requestedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$EmergencyContactCopyWith<$Res>
    implements $EmergencyContactCopyWith<$Res> {
  factory _$EmergencyContactCopyWith(
          _EmergencyContact value, $Res Function(_EmergencyContact) then) =
      __$EmergencyContactCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? email,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'phone_no') String? phoneNo,
      @JsonKey(name: 'country_code') String? countryCode,
      @JsonKey(name: 'requested_on') DateTime? requestedOn,
      @JsonKey(name: 'verification_status') int? verificationStatus});
}

/// @nodoc
class __$EmergencyContactCopyWithImpl<$Res>
    extends _$EmergencyContactCopyWithImpl<$Res>
    implements _$EmergencyContactCopyWith<$Res> {
  __$EmergencyContactCopyWithImpl(
      _EmergencyContact _value, $Res Function(_EmergencyContact) _then)
      : super(_value, (v) => _then(v as _EmergencyContact));

  @override
  _EmergencyContact get _value => super._value as _EmergencyContact;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? phoneNo = freezed,
    Object? countryCode = freezed,
    Object? requestedOn = freezed,
    Object? verificationStatus = freezed,
  }) {
    return _then(_EmergencyContact(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      phoneNo: phoneNo == freezed
          ? _value.phoneNo
          : phoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedOn: requestedOn == freezed
          ? _value.requestedOn
          : requestedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      verificationStatus: verificationStatus == freezed
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmergencyContact implements _EmergencyContact {
  _$_EmergencyContact(
      {this.id,
      this.name,
      this.email,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'phone_no') this.phoneNo,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'requested_on') this.requestedOn,
      @JsonKey(name: 'verification_status') this.verificationStatus});

  factory _$_EmergencyContact.fromJson(Map<String, dynamic> json) =>
      _$_$_EmergencyContactFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'phone_no')
  final String? phoneNo;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  @JsonKey(name: 'requested_on')
  final DateTime? requestedOn;
  @override
  @JsonKey(name: 'verification_status')
  final int? verificationStatus;

  @override
  String toString() {
    return 'EmergencyContact(id: $id, name: $name, email: $email, userId: $userId, phoneNo: $phoneNo, countryCode: $countryCode, requestedOn: $requestedOn, verificationStatus: $verificationStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmergencyContact &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.phoneNo, phoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNo, phoneNo)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)) &&
            (identical(other.requestedOn, requestedOn) ||
                const DeepCollectionEquality()
                    .equals(other.requestedOn, requestedOn)) &&
            (identical(other.verificationStatus, verificationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.verificationStatus, verificationStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(phoneNo) ^
      const DeepCollectionEquality().hash(countryCode) ^
      const DeepCollectionEquality().hash(requestedOn) ^
      const DeepCollectionEquality().hash(verificationStatus);

  @JsonKey(ignore: true)
  @override
  _$EmergencyContactCopyWith<_EmergencyContact> get copyWith =>
      __$EmergencyContactCopyWithImpl<_EmergencyContact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmergencyContactToJson(this);
  }
}

abstract class _EmergencyContact implements EmergencyContact {
  factory _EmergencyContact(
          {int? id,
          String? name,
          String? email,
          @JsonKey(name: 'user_id') int? userId,
          @JsonKey(name: 'phone_no') String? phoneNo,
          @JsonKey(name: 'country_code') String? countryCode,
          @JsonKey(name: 'requested_on') DateTime? requestedOn,
          @JsonKey(name: 'verification_status') int? verificationStatus}) =
      _$_EmergencyContact;

  factory _EmergencyContact.fromJson(Map<String, dynamic> json) =
      _$_EmergencyContact.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_no')
  String? get phoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'requested_on')
  DateTime? get requestedOn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'verification_status')
  int? get verificationStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmergencyContactCopyWith<_EmergencyContact> get copyWith =>
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
      {String? message,
      String? error,
      List<String>? cancelReasons,
      String? locale,
      String? callCenterNumber,
      @JsonKey(name: 'user_data') User? userData}) {
    return _VerifyResponse(
      flag,
      message: message,
      error: error,
      cancelReasons: cancelReasons,
      locale: locale,
      callCenterNumber: callCenterNumber,
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
  String? get error => throw _privateConstructorUsedError;
  List<String>? get cancelReasons => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get callCenterNumber => throw _privateConstructorUsedError;
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
      {int flag,
      String? message,
      String? error,
      List<String>? cancelReasons,
      String? locale,
      String? callCenterNumber,
      @JsonKey(name: 'user_data') User? userData});

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
    Object? error = freezed,
    Object? cancelReasons = freezed,
    Object? locale = freezed,
    Object? callCenterNumber = freezed,
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
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasons: cancelReasons == freezed
          ? _value.cancelReasons
          : cancelReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      callCenterNumber: callCenterNumber == freezed
          ? _value.callCenterNumber
          : callCenterNumber // ignore: cast_nullable_to_non_nullable
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
      {int flag,
      String? message,
      String? error,
      List<String>? cancelReasons,
      String? locale,
      String? callCenterNumber,
      @JsonKey(name: 'user_data') User? userData});

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
    Object? error = freezed,
    Object? cancelReasons = freezed,
    Object? locale = freezed,
    Object? callCenterNumber = freezed,
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
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasons: cancelReasons == freezed
          ? _value.cancelReasons
          : cancelReasons // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      callCenterNumber: callCenterNumber == freezed
          ? _value.callCenterNumber
          : callCenterNumber // ignore: cast_nullable_to_non_nullable
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
      {this.message,
      this.error,
      this.cancelReasons,
      this.locale,
      this.callCenterNumber,
      @JsonKey(name: 'user_data') this.userData});

  factory _$_VerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_VerifyResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final List<String>? cancelReasons;
  @override
  final String? locale;
  @override
  final String? callCenterNumber;
  @override
  @JsonKey(name: 'user_data')
  final User? userData;

  @override
  String toString() {
    return 'VerifyResponse(flag: $flag, message: $message, error: $error, cancelReasons: $cancelReasons, locale: $locale, callCenterNumber: $callCenterNumber, userData: $userData)';
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
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.cancelReasons, cancelReasons) ||
                const DeepCollectionEquality()
                    .equals(other.cancelReasons, cancelReasons)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.callCenterNumber, callCenterNumber) ||
                const DeepCollectionEquality()
                    .equals(other.callCenterNumber, callCenterNumber)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(cancelReasons) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(callCenterNumber) ^
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
      String? error,
      List<String>? cancelReasons,
      String? locale,
      String? callCenterNumber,
      @JsonKey(name: 'user_data') User? userData}) = _$_VerifyResponse;

  factory _VerifyResponse.fromJson(Map<String, dynamic> json) =
      _$_VerifyResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<String>? get cancelReasons => throw _privateConstructorUsedError;
  @override
  String? get locale => throw _privateConstructorUsedError;
  @override
  String? get callCenterNumber => throw _privateConstructorUsedError;
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
      {String? error,
      List<Driver>? drivers,
      List<Vehicle>? regions,
      String? currency,
      @JsonKey(name: 'fare_structure') List<FareStructure>? fareStructure,
      @JsonKey(name: 'distance_unit') String? distanceUnit}) {
    return _FindDriversResponse(
      flag,
      error: error,
      drivers: drivers,
      regions: regions,
      currency: currency,
      fareStructure: fareStructure,
      distanceUnit: distanceUnit,
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
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'fare_structure')
  List<FareStructure>? get fareStructure => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;

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
      {int flag,
      String? error,
      List<Driver>? drivers,
      List<Vehicle>? regions,
      String? currency,
      @JsonKey(name: 'fare_structure') List<FareStructure>? fareStructure,
      @JsonKey(name: 'distance_unit') String? distanceUnit});
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
    Object? currency = freezed,
    Object? fareStructure = freezed,
    Object? distanceUnit = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fareStructure: fareStructure == freezed
          ? _value.fareStructure
          : fareStructure // ignore: cast_nullable_to_non_nullable
              as List<FareStructure>?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int flag,
      String? error,
      List<Driver>? drivers,
      List<Vehicle>? regions,
      String? currency,
      @JsonKey(name: 'fare_structure') List<FareStructure>? fareStructure,
      @JsonKey(name: 'distance_unit') String? distanceUnit});
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
    Object? currency = freezed,
    Object? fareStructure = freezed,
    Object? distanceUnit = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      fareStructure: fareStructure == freezed
          ? _value.fareStructure
          : fareStructure // ignore: cast_nullable_to_non_nullable
              as List<FareStructure>?,
      distanceUnit: distanceUnit == freezed
          ? _value.distanceUnit
          : distanceUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FindDriversResponse implements _FindDriversResponse {
  _$_FindDriversResponse(this.flag,
      {this.error,
      this.drivers,
      this.regions,
      this.currency,
      @JsonKey(name: 'fare_structure') this.fareStructure,
      @JsonKey(name: 'distance_unit') this.distanceUnit});

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
  final String? currency;
  @override
  @JsonKey(name: 'fare_structure')
  final List<FareStructure>? fareStructure;
  @override
  @JsonKey(name: 'distance_unit')
  final String? distanceUnit;

  @override
  String toString() {
    return 'FindDriversResponse(flag: $flag, error: $error, drivers: $drivers, regions: $regions, currency: $currency, fareStructure: $fareStructure, distanceUnit: $distanceUnit)';
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
                const DeepCollectionEquality()
                    .equals(other.regions, regions)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.fareStructure, fareStructure) ||
                const DeepCollectionEquality()
                    .equals(other.fareStructure, fareStructure)) &&
            (identical(other.distanceUnit, distanceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.distanceUnit, distanceUnit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(drivers) ^
      const DeepCollectionEquality().hash(regions) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(fareStructure) ^
      const DeepCollectionEquality().hash(distanceUnit);

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
          List<Vehicle>? regions,
          String? currency,
          @JsonKey(name: 'fare_structure') List<FareStructure>? fareStructure,
          @JsonKey(name: 'distance_unit') String? distanceUnit}) =
      _$_FindDriversResponse;

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
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fare_structure')
  List<FareStructure>? get fareStructure => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'distance_unit')
  String? get distanceUnit => throw _privateConstructorUsedError;
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
      double? latitude,
      double? longitude,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime}) {
    return _RequestRideResponse(
      flag,
      error: error,
      message: message,
      log: log,
      latitude: latitude,
      longitude: longitude,
      orderId: orderId,
      sessionId: sessionId,
      pickupLocationAddress: pickupLocationAddress,
      dropLocationAddress: dropLocationAddress,
      startTime: startTime,
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
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
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
      double? latitude,
      double? longitude,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime});
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? orderId = freezed,
    Object? sessionId = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? startTime = freezed,
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
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
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
      double? latitude,
      double? longitude,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime});
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
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? orderId = freezed,
    Object? sessionId = freezed,
    Object? pickupLocationAddress = freezed,
    Object? dropLocationAddress = freezed,
    Object? startTime = freezed,
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
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
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
      this.latitude,
      this.longitude,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'session_id') this.sessionId,
      @JsonKey(name: 'pickup_location_address') this.pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') this.dropLocationAddress,
      @JsonKey(name: 'start_time') this.startTime});

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
  final double? latitude;
  @override
  final double? longitude;
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
  String toString() {
    return 'RequestRideResponse(flag: $flag, error: $error, message: $message, log: $log, latitude: $latitude, longitude: $longitude, orderId: $orderId, sessionId: $sessionId, pickupLocationAddress: $pickupLocationAddress, dropLocationAddress: $dropLocationAddress, startTime: $startTime)';
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
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
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
                    .equals(other.startTime, startTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(pickupLocationAddress) ^
      const DeepCollectionEquality().hash(dropLocationAddress) ^
      const DeepCollectionEquality().hash(startTime);

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
      double? latitude,
      double? longitude,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'session_id') int? sessionId,
      @JsonKey(name: 'pickup_location_address') String? pickupLocationAddress,
      @JsonKey(name: 'drop_location_address') String? dropLocationAddress,
      @JsonKey(name: 'start_time') String? startTime}) = _$_RequestRideResponse;

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
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
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
  @JsonKey(ignore: true)
  _$RequestRideResponseCopyWith<_RequestRideResponse> get copyWith =>
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
      String? currency,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance,
      @JsonKey(name: 'expire_date') DateTime? expireDate,
      @JsonKey(name: 'real_money_ratio') double? realMoneyRatio,
      @JsonKey(name: 'payment_mode_config_data') List<Payment>? paymentModes}) {
    return _WalletResponse(
      flag,
      message: message,
      error: error,
      currency: currency,
      walletBalance: walletBalance,
      expireDate: expireDate,
      realMoneyRatio: realMoneyRatio,
      paymentModes: paymentModes,
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
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'jugnoo_balance')
  double? get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_date')
  DateTime? get expireDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'real_money_ratio')
  double? get realMoneyRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_mode_config_data')
  List<Payment>? get paymentModes => throw _privateConstructorUsedError;

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
      String? currency,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance,
      @JsonKey(name: 'expire_date') DateTime? expireDate,
      @JsonKey(name: 'real_money_ratio') double? realMoneyRatio,
      @JsonKey(name: 'payment_mode_config_data') List<Payment>? paymentModes});
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
    Object? currency = freezed,
    Object? walletBalance = freezed,
    Object? expireDate = freezed,
    Object? realMoneyRatio = freezed,
    Object? paymentModes = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      realMoneyRatio: realMoneyRatio == freezed
          ? _value.realMoneyRatio
          : realMoneyRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentModes: paymentModes == freezed
          ? _value.paymentModes
          : paymentModes // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
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
      String? currency,
      @JsonKey(name: 'jugnoo_balance') double? walletBalance,
      @JsonKey(name: 'expire_date') DateTime? expireDate,
      @JsonKey(name: 'real_money_ratio') double? realMoneyRatio,
      @JsonKey(name: 'payment_mode_config_data') List<Payment>? paymentModes});
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
    Object? currency = freezed,
    Object? walletBalance = freezed,
    Object? expireDate = freezed,
    Object? realMoneyRatio = freezed,
    Object? paymentModes = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      realMoneyRatio: realMoneyRatio == freezed
          ? _value.realMoneyRatio
          : realMoneyRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentModes: paymentModes == freezed
          ? _value.paymentModes
          : paymentModes // ignore: cast_nullable_to_non_nullable
              as List<Payment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletResponse implements _WalletResponse {
  _$_WalletResponse(this.flag,
      {this.message,
      this.error,
      this.currency,
      @JsonKey(name: 'jugnoo_balance') this.walletBalance,
      @JsonKey(name: 'expire_date') this.expireDate,
      @JsonKey(name: 'real_money_ratio') this.realMoneyRatio,
      @JsonKey(name: 'payment_mode_config_data') this.paymentModes});

  factory _$_WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'jugnoo_balance')
  final double? walletBalance;
  @override
  @JsonKey(name: 'expire_date')
  final DateTime? expireDate;
  @override
  @JsonKey(name: 'real_money_ratio')
  final double? realMoneyRatio;
  @override
  @JsonKey(name: 'payment_mode_config_data')
  final List<Payment>? paymentModes;

  @override
  String toString() {
    return 'WalletResponse(flag: $flag, message: $message, error: $error, currency: $currency, walletBalance: $walletBalance, expireDate: $expireDate, realMoneyRatio: $realMoneyRatio, paymentModes: $paymentModes)';
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
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.walletBalance, walletBalance) ||
                const DeepCollectionEquality()
                    .equals(other.walletBalance, walletBalance)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.realMoneyRatio, realMoneyRatio) ||
                const DeepCollectionEquality()
                    .equals(other.realMoneyRatio, realMoneyRatio)) &&
            (identical(other.paymentModes, paymentModes) ||
                const DeepCollectionEquality()
                    .equals(other.paymentModes, paymentModes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(walletBalance) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(realMoneyRatio) ^
      const DeepCollectionEquality().hash(paymentModes);

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
  factory _WalletResponse(
      int flag,
      {String? message,
      String? error,
      String? currency,
      @JsonKey(name: 'jugnoo_balance')
          double? walletBalance,
      @JsonKey(name: 'expire_date')
          DateTime? expireDate,
      @JsonKey(name: 'real_money_ratio')
          double? realMoneyRatio,
      @JsonKey(name: 'payment_mode_config_data')
          List<Payment>? paymentModes}) = _$_WalletResponse;

  factory _WalletResponse.fromJson(Map<String, dynamic> json) =
      _$_WalletResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'jugnoo_balance')
  double? get walletBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expire_date')
  DateTime? get expireDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'real_money_ratio')
  double? get realMoneyRatio => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_mode_config_data')
  List<Payment>? get paymentModes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletResponseCopyWith<_WalletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PayWithHelloCashResponse _$PayWithHelloCashResponseFromJson(
    Map<String, dynamic> json) {
  return _PayWithHelloCashResponse.fromJson(json);
}

/// @nodoc
class _$PayWithHelloCashResponseTearOff {
  const _$PayWithHelloCashResponseTearOff();

  _PayWithHelloCashResponse call(
      {int? amount,
      String? code,
      String? message,
      String? currency,
      String? date,
      String? description,
      String? expires,
      String? from,
      @JsonKey(name: 'fromname') String? fromName,
      String? id,
      String? status,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'toname') String? toName,
      String? to,
      @JsonKey(name: 'isupcoming') String? isUpcoming,
      String? error}) {
    return _PayWithHelloCashResponse(
      amount: amount,
      code: code,
      message: message,
      currency: currency,
      date: date,
      description: description,
      expires: expires,
      from: from,
      fromName: fromName,
      id: id,
      status: status,
      statusDetail: statusDetail,
      toName: toName,
      to: to,
      isUpcoming: isUpcoming,
      error: error,
    );
  }

  PayWithHelloCashResponse fromJson(Map<String, Object> json) {
    return PayWithHelloCashResponse.fromJson(json);
  }
}

/// @nodoc
const $PayWithHelloCashResponse = _$PayWithHelloCashResponseTearOff();

/// @nodoc
mixin _$PayWithHelloCashResponse {
  int? get amount => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get expires => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'fromname')
  String? get fromName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusdetail')
  String? get statusDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'toname')
  String? get toName => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'isupcoming')
  String? get isUpcoming => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayWithHelloCashResponseCopyWith<PayWithHelloCashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayWithHelloCashResponseCopyWith<$Res> {
  factory $PayWithHelloCashResponseCopyWith(PayWithHelloCashResponse value,
          $Res Function(PayWithHelloCashResponse) then) =
      _$PayWithHelloCashResponseCopyWithImpl<$Res>;
  $Res call(
      {int? amount,
      String? code,
      String? message,
      String? currency,
      String? date,
      String? description,
      String? expires,
      String? from,
      @JsonKey(name: 'fromname') String? fromName,
      String? id,
      String? status,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'toname') String? toName,
      String? to,
      @JsonKey(name: 'isupcoming') String? isUpcoming,
      String? error});
}

/// @nodoc
class _$PayWithHelloCashResponseCopyWithImpl<$Res>
    implements $PayWithHelloCashResponseCopyWith<$Res> {
  _$PayWithHelloCashResponseCopyWithImpl(this._value, this._then);

  final PayWithHelloCashResponse _value;
  // ignore: unused_field
  final $Res Function(PayWithHelloCashResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? currency = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? expires = freezed,
    Object? from = freezed,
    Object? fromName = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? statusDetail = freezed,
    Object? toName = freezed,
    Object? to = freezed,
    Object? isUpcoming = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDetail: statusDetail == freezed
          ? _value.statusDetail
          : statusDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: toName == freezed
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpcoming: isUpcoming == freezed
          ? _value.isUpcoming
          : isUpcoming // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PayWithHelloCashResponseCopyWith<$Res>
    implements $PayWithHelloCashResponseCopyWith<$Res> {
  factory _$PayWithHelloCashResponseCopyWith(_PayWithHelloCashResponse value,
          $Res Function(_PayWithHelloCashResponse) then) =
      __$PayWithHelloCashResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? amount,
      String? code,
      String? message,
      String? currency,
      String? date,
      String? description,
      String? expires,
      String? from,
      @JsonKey(name: 'fromname') String? fromName,
      String? id,
      String? status,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'toname') String? toName,
      String? to,
      @JsonKey(name: 'isupcoming') String? isUpcoming,
      String? error});
}

/// @nodoc
class __$PayWithHelloCashResponseCopyWithImpl<$Res>
    extends _$PayWithHelloCashResponseCopyWithImpl<$Res>
    implements _$PayWithHelloCashResponseCopyWith<$Res> {
  __$PayWithHelloCashResponseCopyWithImpl(_PayWithHelloCashResponse _value,
      $Res Function(_PayWithHelloCashResponse) _then)
      : super(_value, (v) => _then(v as _PayWithHelloCashResponse));

  @override
  _PayWithHelloCashResponse get _value =>
      super._value as _PayWithHelloCashResponse;

  @override
  $Res call({
    Object? amount = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? currency = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? expires = freezed,
    Object? from = freezed,
    Object? fromName = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? statusDetail = freezed,
    Object? toName = freezed,
    Object? to = freezed,
    Object? isUpcoming = freezed,
    Object? error = freezed,
  }) {
    return _then(_PayWithHelloCashResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expires: expires == freezed
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String?,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: fromName == freezed
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusDetail: statusDetail == freezed
          ? _value.statusDetail
          : statusDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: toName == freezed
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpcoming: isUpcoming == freezed
          ? _value.isUpcoming
          : isUpcoming // ignore: cast_nullable_to_non_nullable
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
class _$_PayWithHelloCashResponse implements _PayWithHelloCashResponse {
  _$_PayWithHelloCashResponse(
      {this.amount,
      this.code,
      this.message,
      this.currency,
      this.date,
      this.description,
      this.expires,
      this.from,
      @JsonKey(name: 'fromname') this.fromName,
      this.id,
      this.status,
      @JsonKey(name: 'statusdetail') this.statusDetail,
      @JsonKey(name: 'toname') this.toName,
      this.to,
      @JsonKey(name: 'isupcoming') this.isUpcoming,
      this.error});

  factory _$_PayWithHelloCashResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PayWithHelloCashResponseFromJson(json);

  @override
  final int? amount;
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? currency;
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? expires;
  @override
  final String? from;
  @override
  @JsonKey(name: 'fromname')
  final String? fromName;
  @override
  final String? id;
  @override
  final String? status;
  @override
  @JsonKey(name: 'statusdetail')
  final String? statusDetail;
  @override
  @JsonKey(name: 'toname')
  final String? toName;
  @override
  final String? to;
  @override
  @JsonKey(name: 'isupcoming')
  final String? isUpcoming;
  @override
  final String? error;

  @override
  String toString() {
    return 'PayWithHelloCashResponse(amount: $amount, code: $code, message: $message, currency: $currency, date: $date, description: $description, expires: $expires, from: $from, fromName: $fromName, id: $id, status: $status, statusDetail: $statusDetail, toName: $toName, to: $to, isUpcoming: $isUpcoming, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PayWithHelloCashResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality()
                    .equals(other.expires, expires)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.fromName, fromName) ||
                const DeepCollectionEquality()
                    .equals(other.fromName, fromName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.statusDetail, statusDetail) ||
                const DeepCollectionEquality()
                    .equals(other.statusDetail, statusDetail)) &&
            (identical(other.toName, toName) ||
                const DeepCollectionEquality().equals(other.toName, toName)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)) &&
            (identical(other.isUpcoming, isUpcoming) ||
                const DeepCollectionEquality()
                    .equals(other.isUpcoming, isUpcoming)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(expires) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(fromName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(statusDetail) ^
      const DeepCollectionEquality().hash(toName) ^
      const DeepCollectionEquality().hash(to) ^
      const DeepCollectionEquality().hash(isUpcoming) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$PayWithHelloCashResponseCopyWith<_PayWithHelloCashResponse> get copyWith =>
      __$PayWithHelloCashResponseCopyWithImpl<_PayWithHelloCashResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayWithHelloCashResponseToJson(this);
  }
}

abstract class _PayWithHelloCashResponse implements PayWithHelloCashResponse {
  factory _PayWithHelloCashResponse(
      {int? amount,
      String? code,
      String? message,
      String? currency,
      String? date,
      String? description,
      String? expires,
      String? from,
      @JsonKey(name: 'fromname') String? fromName,
      String? id,
      String? status,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'toname') String? toName,
      String? to,
      @JsonKey(name: 'isupcoming') String? isUpcoming,
      String? error}) = _$_PayWithHelloCashResponse;

  factory _PayWithHelloCashResponse.fromJson(Map<String, dynamic> json) =
      _$_PayWithHelloCashResponse.fromJson;

  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get expires => throw _privateConstructorUsedError;
  @override
  String? get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fromname')
  String? get fromName => throw _privateConstructorUsedError;
  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'statusdetail')
  String? get statusDetail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'toname')
  String? get toName => throw _privateConstructorUsedError;
  @override
  String? get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'isupcoming')
  String? get isUpcoming => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PayWithHelloCashResponseCopyWith<_PayWithHelloCashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckHelloCashResponse _$CheckHelloCashResponseFromJson(
    Map<String, dynamic> json) {
  return _CheckHelloCashResponse.fromJson(json);
}

/// @nodoc
class _$CheckHelloCashResponseTearOff {
  const _$CheckHelloCashResponseTearOff();

  _CheckHelloCashResponse call(
      {int? amount,
      String? message,
      String? error,
      int? id,
      String? status,
      @JsonKey(name: 'passenger_id') int? passengerId,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'bill_ref_number') String? billRefNumber,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'generated_date') String? generatedDate}) {
    return _CheckHelloCashResponse(
      amount: amount,
      message: message,
      error: error,
      id: id,
      status: status,
      passengerId: passengerId,
      driverId: driverId,
      statusDetail: statusDetail,
      billRefNumber: billRefNumber,
      paymentMethod: paymentMethod,
      generatedDate: generatedDate,
    );
  }

  CheckHelloCashResponse fromJson(Map<String, Object> json) {
    return CheckHelloCashResponse.fromJson(json);
  }
}

/// @nodoc
const $CheckHelloCashResponse = _$CheckHelloCashResponseTearOff();

/// @nodoc
mixin _$CheckHelloCashResponse {
  int? get amount => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'passenger_id')
  int? get passengerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusdetail')
  String? get statusDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'bill_ref_number')
  String? get billRefNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_date')
  String? get generatedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckHelloCashResponseCopyWith<CheckHelloCashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckHelloCashResponseCopyWith<$Res> {
  factory $CheckHelloCashResponseCopyWith(CheckHelloCashResponse value,
          $Res Function(CheckHelloCashResponse) then) =
      _$CheckHelloCashResponseCopyWithImpl<$Res>;
  $Res call(
      {int? amount,
      String? message,
      String? error,
      int? id,
      String? status,
      @JsonKey(name: 'passenger_id') int? passengerId,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'bill_ref_number') String? billRefNumber,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'generated_date') String? generatedDate});
}

/// @nodoc
class _$CheckHelloCashResponseCopyWithImpl<$Res>
    implements $CheckHelloCashResponseCopyWith<$Res> {
  _$CheckHelloCashResponseCopyWithImpl(this._value, this._then);

  final CheckHelloCashResponse _value;
  // ignore: unused_field
  final $Res Function(CheckHelloCashResponse) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? passengerId = freezed,
    Object? driverId = freezed,
    Object? statusDetail = freezed,
    Object? billRefNumber = freezed,
    Object? paymentMethod = freezed,
    Object? generatedDate = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      passengerId: passengerId == freezed
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusDetail: statusDetail == freezed
          ? _value.statusDetail
          : statusDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      billRefNumber: billRefNumber == freezed
          ? _value.billRefNumber
          : billRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedDate: generatedDate == freezed
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CheckHelloCashResponseCopyWith<$Res>
    implements $CheckHelloCashResponseCopyWith<$Res> {
  factory _$CheckHelloCashResponseCopyWith(_CheckHelloCashResponse value,
          $Res Function(_CheckHelloCashResponse) then) =
      __$CheckHelloCashResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? amount,
      String? message,
      String? error,
      int? id,
      String? status,
      @JsonKey(name: 'passenger_id') int? passengerId,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'statusdetail') String? statusDetail,
      @JsonKey(name: 'bill_ref_number') String? billRefNumber,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'generated_date') String? generatedDate});
}

/// @nodoc
class __$CheckHelloCashResponseCopyWithImpl<$Res>
    extends _$CheckHelloCashResponseCopyWithImpl<$Res>
    implements _$CheckHelloCashResponseCopyWith<$Res> {
  __$CheckHelloCashResponseCopyWithImpl(_CheckHelloCashResponse _value,
      $Res Function(_CheckHelloCashResponse) _then)
      : super(_value, (v) => _then(v as _CheckHelloCashResponse));

  @override
  _CheckHelloCashResponse get _value => super._value as _CheckHelloCashResponse;

  @override
  $Res call({
    Object? amount = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? id = freezed,
    Object? status = freezed,
    Object? passengerId = freezed,
    Object? driverId = freezed,
    Object? statusDetail = freezed,
    Object? billRefNumber = freezed,
    Object? paymentMethod = freezed,
    Object? generatedDate = freezed,
  }) {
    return _then(_CheckHelloCashResponse(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      passengerId: passengerId == freezed
          ? _value.passengerId
          : passengerId // ignore: cast_nullable_to_non_nullable
              as int?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      statusDetail: statusDetail == freezed
          ? _value.statusDetail
          : statusDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      billRefNumber: billRefNumber == freezed
          ? _value.billRefNumber
          : billRefNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      generatedDate: generatedDate == freezed
          ? _value.generatedDate
          : generatedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckHelloCashResponse implements _CheckHelloCashResponse {
  _$_CheckHelloCashResponse(
      {this.amount,
      this.message,
      this.error,
      this.id,
      this.status,
      @JsonKey(name: 'passenger_id') this.passengerId,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'statusdetail') this.statusDetail,
      @JsonKey(name: 'bill_ref_number') this.billRefNumber,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'generated_date') this.generatedDate});

  factory _$_CheckHelloCashResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CheckHelloCashResponseFromJson(json);

  @override
  final int? amount;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final int? id;
  @override
  final String? status;
  @override
  @JsonKey(name: 'passenger_id')
  final int? passengerId;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'statusdetail')
  final String? statusDetail;
  @override
  @JsonKey(name: 'bill_ref_number')
  final String? billRefNumber;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'generated_date')
  final String? generatedDate;

  @override
  String toString() {
    return 'CheckHelloCashResponse(amount: $amount, message: $message, error: $error, id: $id, status: $status, passengerId: $passengerId, driverId: $driverId, statusDetail: $statusDetail, billRefNumber: $billRefNumber, paymentMethod: $paymentMethod, generatedDate: $generatedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckHelloCashResponse &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.passengerId, passengerId) ||
                const DeepCollectionEquality()
                    .equals(other.passengerId, passengerId)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.statusDetail, statusDetail) ||
                const DeepCollectionEquality()
                    .equals(other.statusDetail, statusDetail)) &&
            (identical(other.billRefNumber, billRefNumber) ||
                const DeepCollectionEquality()
                    .equals(other.billRefNumber, billRefNumber)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.generatedDate, generatedDate) ||
                const DeepCollectionEquality()
                    .equals(other.generatedDate, generatedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(passengerId) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(statusDetail) ^
      const DeepCollectionEquality().hash(billRefNumber) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(generatedDate);

  @JsonKey(ignore: true)
  @override
  _$CheckHelloCashResponseCopyWith<_CheckHelloCashResponse> get copyWith =>
      __$CheckHelloCashResponseCopyWithImpl<_CheckHelloCashResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheckHelloCashResponseToJson(this);
  }
}

abstract class _CheckHelloCashResponse implements CheckHelloCashResponse {
  factory _CheckHelloCashResponse(
          {int? amount,
          String? message,
          String? error,
          int? id,
          String? status,
          @JsonKey(name: 'passenger_id') int? passengerId,
          @JsonKey(name: 'driver_id') int? driverId,
          @JsonKey(name: 'statusdetail') String? statusDetail,
          @JsonKey(name: 'bill_ref_number') String? billRefNumber,
          @JsonKey(name: 'payment_method') String? paymentMethod,
          @JsonKey(name: 'generated_date') String? generatedDate}) =
      _$_CheckHelloCashResponse;

  factory _CheckHelloCashResponse.fromJson(Map<String, dynamic> json) =
      _$_CheckHelloCashResponse.fromJson;

  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'passenger_id')
  int? get passengerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'statusdetail')
  String? get statusDetail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'bill_ref_number')
  String? get billRefNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'generated_date')
  String? get generatedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CheckHelloCashResponseCopyWith<_CheckHelloCashResponse> get copyWith =>
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

SavedPlacesResponse _$SavedPlacesResponseFromJson(Map<String, dynamic> json) {
  return _SavedPlacesResponse.fromJson(json);
}

/// @nodoc
class _$SavedPlacesResponseTearOff {
  const _$SavedPlacesResponseTearOff();

  _SavedPlacesResponse call(int flag,
      {String? message, String? error, List<Address>? addresses}) {
    return _SavedPlacesResponse(
      flag,
      message: message,
      error: error,
      addresses: addresses,
    );
  }

  SavedPlacesResponse fromJson(Map<String, Object> json) {
    return SavedPlacesResponse.fromJson(json);
  }
}

/// @nodoc
const $SavedPlacesResponse = _$SavedPlacesResponseTearOff();

/// @nodoc
mixin _$SavedPlacesResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Address>? get addresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPlacesResponseCopyWith<SavedPlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPlacesResponseCopyWith<$Res> {
  factory $SavedPlacesResponseCopyWith(
          SavedPlacesResponse value, $Res Function(SavedPlacesResponse) then) =
      _$SavedPlacesResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag, String? message, String? error, List<Address>? addresses});
}

/// @nodoc
class _$SavedPlacesResponseCopyWithImpl<$Res>
    implements $SavedPlacesResponseCopyWith<$Res> {
  _$SavedPlacesResponseCopyWithImpl(this._value, this._then);

  final SavedPlacesResponse _value;
  // ignore: unused_field
  final $Res Function(SavedPlacesResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? addresses = freezed,
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
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ));
  }
}

/// @nodoc
abstract class _$SavedPlacesResponseCopyWith<$Res>
    implements $SavedPlacesResponseCopyWith<$Res> {
  factory _$SavedPlacesResponseCopyWith(_SavedPlacesResponse value,
          $Res Function(_SavedPlacesResponse) then) =
      __$SavedPlacesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag, String? message, String? error, List<Address>? addresses});
}

/// @nodoc
class __$SavedPlacesResponseCopyWithImpl<$Res>
    extends _$SavedPlacesResponseCopyWithImpl<$Res>
    implements _$SavedPlacesResponseCopyWith<$Res> {
  __$SavedPlacesResponseCopyWithImpl(
      _SavedPlacesResponse _value, $Res Function(_SavedPlacesResponse) _then)
      : super(_value, (v) => _then(v as _SavedPlacesResponse));

  @override
  _SavedPlacesResponse get _value => super._value as _SavedPlacesResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? addresses = freezed,
  }) {
    return _then(_SavedPlacesResponse(
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
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPlacesResponse implements _SavedPlacesResponse {
  _$_SavedPlacesResponse(this.flag, {this.message, this.error, this.addresses});

  factory _$_SavedPlacesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SavedPlacesResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final List<Address>? addresses;

  @override
  String toString() {
    return 'SavedPlacesResponse(flag: $flag, message: $message, error: $error, addresses: $addresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SavedPlacesResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(addresses);

  @JsonKey(ignore: true)
  @override
  _$SavedPlacesResponseCopyWith<_SavedPlacesResponse> get copyWith =>
      __$SavedPlacesResponseCopyWithImpl<_SavedPlacesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SavedPlacesResponseToJson(this);
  }
}

abstract class _SavedPlacesResponse implements SavedPlacesResponse {
  factory _SavedPlacesResponse(int flag,
      {String? message,
      String? error,
      List<Address>? addresses}) = _$_SavedPlacesResponse;

  factory _SavedPlacesResponse.fromJson(Map<String, dynamic> json) =
      _$_SavedPlacesResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<Address>? get addresses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SavedPlacesResponseCopyWith<_SavedPlacesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverLocationResponse _$DriverLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _DriverLocationResponse.fromJson(json);
}

/// @nodoc
class _$DriverLocationResponseTearOff {
  const _$DriverLocationResponseTearOff();

  _DriverLocationResponse call(int flag,
      {double? latitude, double? longitude, int? eta, double? bearing}) {
    return _DriverLocationResponse(
      flag,
      latitude: latitude,
      longitude: longitude,
      eta: eta,
      bearing: bearing,
    );
  }

  DriverLocationResponse fromJson(Map<String, Object> json) {
    return DriverLocationResponse.fromJson(json);
  }
}

/// @nodoc
const $DriverLocationResponse = _$DriverLocationResponseTearOff();

/// @nodoc
mixin _$DriverLocationResponse {
  int get flag => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  int? get eta => throw _privateConstructorUsedError;
  double? get bearing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriverLocationResponseCopyWith<DriverLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverLocationResponseCopyWith<$Res> {
  factory $DriverLocationResponseCopyWith(DriverLocationResponse value,
          $Res Function(DriverLocationResponse) then) =
      _$DriverLocationResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      double? latitude,
      double? longitude,
      int? eta,
      double? bearing});
}

/// @nodoc
class _$DriverLocationResponseCopyWithImpl<$Res>
    implements $DriverLocationResponseCopyWith<$Res> {
  _$DriverLocationResponseCopyWithImpl(this._value, this._then);

  final DriverLocationResponse _value;
  // ignore: unused_field
  final $Res Function(DriverLocationResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? eta = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as int?,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$DriverLocationResponseCopyWith<$Res>
    implements $DriverLocationResponseCopyWith<$Res> {
  factory _$DriverLocationResponseCopyWith(_DriverLocationResponse value,
          $Res Function(_DriverLocationResponse) then) =
      __$DriverLocationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      double? latitude,
      double? longitude,
      int? eta,
      double? bearing});
}

/// @nodoc
class __$DriverLocationResponseCopyWithImpl<$Res>
    extends _$DriverLocationResponseCopyWithImpl<$Res>
    implements _$DriverLocationResponseCopyWith<$Res> {
  __$DriverLocationResponseCopyWithImpl(_DriverLocationResponse _value,
      $Res Function(_DriverLocationResponse) _then)
      : super(_value, (v) => _then(v as _DriverLocationResponse));

  @override
  _DriverLocationResponse get _value => super._value as _DriverLocationResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? eta = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_DriverLocationResponse(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as int?,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriverLocationResponse implements _DriverLocationResponse {
  _$_DriverLocationResponse(this.flag,
      {this.latitude, this.longitude, this.eta, this.bearing});

  factory _$_DriverLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DriverLocationResponseFromJson(json);

  @override
  final int flag;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final int? eta;
  @override
  final double? bearing;

  @override
  String toString() {
    return 'DriverLocationResponse(flag: $flag, latitude: $latitude, longitude: $longitude, eta: $eta, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DriverLocationResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.eta, eta) ||
                const DeepCollectionEquality().equals(other.eta, eta)) &&
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality().equals(other.bearing, bearing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(eta) ^
      const DeepCollectionEquality().hash(bearing);

  @JsonKey(ignore: true)
  @override
  _$DriverLocationResponseCopyWith<_DriverLocationResponse> get copyWith =>
      __$DriverLocationResponseCopyWithImpl<_DriverLocationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DriverLocationResponseToJson(this);
  }
}

abstract class _DriverLocationResponse implements DriverLocationResponse {
  factory _DriverLocationResponse(int flag,
      {double? latitude,
      double? longitude,
      int? eta,
      double? bearing}) = _$_DriverLocationResponse;

  factory _DriverLocationResponse.fromJson(Map<String, dynamic> json) =
      _$_DriverLocationResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  int? get eta => throw _privateConstructorUsedError;
  @override
  double? get bearing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DriverLocationResponseCopyWith<_DriverLocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryDetailResponse _$DeliveryDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryDetailResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryDetailResponseTearOff {
  const _$DeliveryDetailResponseTearOff();

  _DeliveryDetailResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'delivery_charges') DeliveryCharge? deliveryCharges}) {
    return _DeliveryDetailResponse(
      flag,
      message: message,
      error: error,
      deliveryCharges: deliveryCharges,
    );
  }

  DeliveryDetailResponse fromJson(Map<String, Object> json) {
    return DeliveryDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryDetailResponse = _$DeliveryDetailResponseTearOff();

/// @nodoc
mixin _$DeliveryDetailResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_charges')
  DeliveryCharge? get deliveryCharges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDetailResponseCopyWith<DeliveryDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailResponseCopyWith<$Res> {
  factory $DeliveryDetailResponseCopyWith(DeliveryDetailResponse value,
          $Res Function(DeliveryDetailResponse) then) =
      _$DeliveryDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'delivery_charges') DeliveryCharge? deliveryCharges});

  $DeliveryChargeCopyWith<$Res>? get deliveryCharges;
}

/// @nodoc
class _$DeliveryDetailResponseCopyWithImpl<$Res>
    implements $DeliveryDetailResponseCopyWith<$Res> {
  _$DeliveryDetailResponseCopyWithImpl(this._value, this._then);

  final DeliveryDetailResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryDetailResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? deliveryCharges = freezed,
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
      deliveryCharges: deliveryCharges == freezed
          ? _value.deliveryCharges
          : deliveryCharges // ignore: cast_nullable_to_non_nullable
              as DeliveryCharge?,
    ));
  }

  @override
  $DeliveryChargeCopyWith<$Res>? get deliveryCharges {
    if (_value.deliveryCharges == null) {
      return null;
    }

    return $DeliveryChargeCopyWith<$Res>(_value.deliveryCharges!, (value) {
      return _then(_value.copyWith(deliveryCharges: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryDetailResponseCopyWith<$Res>
    implements $DeliveryDetailResponseCopyWith<$Res> {
  factory _$DeliveryDetailResponseCopyWith(_DeliveryDetailResponse value,
          $Res Function(_DeliveryDetailResponse) then) =
      __$DeliveryDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'delivery_charges') DeliveryCharge? deliveryCharges});

  @override
  $DeliveryChargeCopyWith<$Res>? get deliveryCharges;
}

/// @nodoc
class __$DeliveryDetailResponseCopyWithImpl<$Res>
    extends _$DeliveryDetailResponseCopyWithImpl<$Res>
    implements _$DeliveryDetailResponseCopyWith<$Res> {
  __$DeliveryDetailResponseCopyWithImpl(_DeliveryDetailResponse _value,
      $Res Function(_DeliveryDetailResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryDetailResponse));

  @override
  _DeliveryDetailResponse get _value => super._value as _DeliveryDetailResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? deliveryCharges = freezed,
  }) {
    return _then(_DeliveryDetailResponse(
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
      deliveryCharges: deliveryCharges == freezed
          ? _value.deliveryCharges
          : deliveryCharges // ignore: cast_nullable_to_non_nullable
              as DeliveryCharge?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryDetailResponse implements _DeliveryDetailResponse {
  _$_DeliveryDetailResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'delivery_charges') this.deliveryCharges});

  factory _$_DeliveryDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryDetailResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'delivery_charges')
  final DeliveryCharge? deliveryCharges;

  @override
  String toString() {
    return 'DeliveryDetailResponse(flag: $flag, message: $message, error: $error, deliveryCharges: $deliveryCharges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryDetailResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.deliveryCharges, deliveryCharges) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCharges, deliveryCharges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(deliveryCharges);

  @JsonKey(ignore: true)
  @override
  _$DeliveryDetailResponseCopyWith<_DeliveryDetailResponse> get copyWith =>
      __$DeliveryDetailResponseCopyWithImpl<_DeliveryDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryDetailResponseToJson(this);
  }
}

abstract class _DeliveryDetailResponse implements DeliveryDetailResponse {
  factory _DeliveryDetailResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'delivery_charges') DeliveryCharge? deliveryCharges}) =
      _$_DeliveryDetailResponse;

  factory _DeliveryDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryDetailResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_charges')
  DeliveryCharge? get deliveryCharges => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryDetailResponseCopyWith<_DeliveryDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryAgentResponse _$DeliveryAgentResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAgentResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryAgentResponseTearOff {
  const _$DeliveryAgentResponseTearOff();

  _DeliveryAgentResponse call(int flag,
      {String? message,
      String? error,
      String? currency,
      @JsonKey(name: 'vehicles_info') List<Vehicle>? vehiclesInfo,
      @JsonKey(name: 'currency_code') String? currencyCode}) {
    return _DeliveryAgentResponse(
      flag,
      message: message,
      error: error,
      currency: currency,
      vehiclesInfo: vehiclesInfo,
      currencyCode: currencyCode,
    );
  }

  DeliveryAgentResponse fromJson(Map<String, Object> json) {
    return DeliveryAgentResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryAgentResponse = _$DeliveryAgentResponseTearOff();

/// @nodoc
mixin _$DeliveryAgentResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicles_info')
  List<Vehicle>? get vehiclesInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_code')
  String? get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAgentResponseCopyWith<DeliveryAgentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAgentResponseCopyWith<$Res> {
  factory $DeliveryAgentResponseCopyWith(DeliveryAgentResponse value,
          $Res Function(DeliveryAgentResponse) then) =
      _$DeliveryAgentResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? currency,
      @JsonKey(name: 'vehicles_info') List<Vehicle>? vehiclesInfo,
      @JsonKey(name: 'currency_code') String? currencyCode});
}

/// @nodoc
class _$DeliveryAgentResponseCopyWithImpl<$Res>
    implements $DeliveryAgentResponseCopyWith<$Res> {
  _$DeliveryAgentResponseCopyWithImpl(this._value, this._then);

  final DeliveryAgentResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryAgentResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? currency = freezed,
    Object? vehiclesInfo = freezed,
    Object? currencyCode = freezed,
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      vehiclesInfo: vehiclesInfo == freezed
          ? _value.vehiclesInfo
          : vehiclesInfo // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryAgentResponseCopyWith<$Res>
    implements $DeliveryAgentResponseCopyWith<$Res> {
  factory _$DeliveryAgentResponseCopyWith(_DeliveryAgentResponse value,
          $Res Function(_DeliveryAgentResponse) then) =
      __$DeliveryAgentResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? currency,
      @JsonKey(name: 'vehicles_info') List<Vehicle>? vehiclesInfo,
      @JsonKey(name: 'currency_code') String? currencyCode});
}

/// @nodoc
class __$DeliveryAgentResponseCopyWithImpl<$Res>
    extends _$DeliveryAgentResponseCopyWithImpl<$Res>
    implements _$DeliveryAgentResponseCopyWith<$Res> {
  __$DeliveryAgentResponseCopyWithImpl(_DeliveryAgentResponse _value,
      $Res Function(_DeliveryAgentResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryAgentResponse));

  @override
  _DeliveryAgentResponse get _value => super._value as _DeliveryAgentResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? currency = freezed,
    Object? vehiclesInfo = freezed,
    Object? currencyCode = freezed,
  }) {
    return _then(_DeliveryAgentResponse(
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
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      vehiclesInfo: vehiclesInfo == freezed
          ? _value.vehiclesInfo
          : vehiclesInfo // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryAgentResponse implements _DeliveryAgentResponse {
  _$_DeliveryAgentResponse(this.flag,
      {this.message,
      this.error,
      this.currency,
      @JsonKey(name: 'vehicles_info') this.vehiclesInfo,
      @JsonKey(name: 'currency_code') this.currencyCode});

  factory _$_DeliveryAgentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryAgentResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'vehicles_info')
  final List<Vehicle>? vehiclesInfo;
  @override
  @JsonKey(name: 'currency_code')
  final String? currencyCode;

  @override
  String toString() {
    return 'DeliveryAgentResponse(flag: $flag, message: $message, error: $error, currency: $currency, vehiclesInfo: $vehiclesInfo, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryAgentResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.vehiclesInfo, vehiclesInfo) ||
                const DeepCollectionEquality()
                    .equals(other.vehiclesInfo, vehiclesInfo)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(vehiclesInfo) ^
      const DeepCollectionEquality().hash(currencyCode);

  @JsonKey(ignore: true)
  @override
  _$DeliveryAgentResponseCopyWith<_DeliveryAgentResponse> get copyWith =>
      __$DeliveryAgentResponseCopyWithImpl<_DeliveryAgentResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryAgentResponseToJson(this);
  }
}

abstract class _DeliveryAgentResponse implements DeliveryAgentResponse {
  factory _DeliveryAgentResponse(int flag,
          {String? message,
          String? error,
          String? currency,
          @JsonKey(name: 'vehicles_info') List<Vehicle>? vehiclesInfo,
          @JsonKey(name: 'currency_code') String? currencyCode}) =
      _$_DeliveryAgentResponse;

  factory _DeliveryAgentResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAgentResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicles_info')
  List<Vehicle>? get vehiclesInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency_code')
  String? get currencyCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryAgentResponseCopyWith<_DeliveryAgentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryTrackingResponse _$DeliveryTrackingResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryTrackingResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryTrackingResponseTearOff {
  const _$DeliveryTrackingResponseTearOff();

  _DeliveryTrackingResponse call(int flag,
      {String? message,
      String? error,
      int? status,
      double? latitude,
      double? longitude,
      double? bearing}) {
    return _DeliveryTrackingResponse(
      flag,
      message: message,
      error: error,
      status: status,
      latitude: latitude,
      longitude: longitude,
      bearing: bearing,
    );
  }

  DeliveryTrackingResponse fromJson(Map<String, Object> json) {
    return DeliveryTrackingResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryTrackingResponse = _$DeliveryTrackingResponseTearOff();

/// @nodoc
mixin _$DeliveryTrackingResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get bearing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTrackingResponseCopyWith<DeliveryTrackingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTrackingResponseCopyWith<$Res> {
  factory $DeliveryTrackingResponseCopyWith(DeliveryTrackingResponse value,
          $Res Function(DeliveryTrackingResponse) then) =
      _$DeliveryTrackingResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      int? status,
      double? latitude,
      double? longitude,
      double? bearing});
}

/// @nodoc
class _$DeliveryTrackingResponseCopyWithImpl<$Res>
    implements $DeliveryTrackingResponseCopyWith<$Res> {
  _$DeliveryTrackingResponseCopyWithImpl(this._value, this._then);

  final DeliveryTrackingResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryTrackingResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? bearing = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryTrackingResponseCopyWith<$Res>
    implements $DeliveryTrackingResponseCopyWith<$Res> {
  factory _$DeliveryTrackingResponseCopyWith(_DeliveryTrackingResponse value,
          $Res Function(_DeliveryTrackingResponse) then) =
      __$DeliveryTrackingResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      int? status,
      double? latitude,
      double? longitude,
      double? bearing});
}

/// @nodoc
class __$DeliveryTrackingResponseCopyWithImpl<$Res>
    extends _$DeliveryTrackingResponseCopyWithImpl<$Res>
    implements _$DeliveryTrackingResponseCopyWith<$Res> {
  __$DeliveryTrackingResponseCopyWithImpl(_DeliveryTrackingResponse _value,
      $Res Function(_DeliveryTrackingResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryTrackingResponse));

  @override
  _DeliveryTrackingResponse get _value =>
      super._value as _DeliveryTrackingResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? bearing = freezed,
  }) {
    return _then(_DeliveryTrackingResponse(
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: bearing == freezed
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryTrackingResponse implements _DeliveryTrackingResponse {
  _$_DeliveryTrackingResponse(this.flag,
      {this.message,
      this.error,
      this.status,
      this.latitude,
      this.longitude,
      this.bearing});

  factory _$_DeliveryTrackingResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryTrackingResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final int? status;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? bearing;

  @override
  String toString() {
    return 'DeliveryTrackingResponse(flag: $flag, message: $message, error: $error, status: $status, latitude: $latitude, longitude: $longitude, bearing: $bearing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryTrackingResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.bearing, bearing) ||
                const DeepCollectionEquality().equals(other.bearing, bearing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(bearing);

  @JsonKey(ignore: true)
  @override
  _$DeliveryTrackingResponseCopyWith<_DeliveryTrackingResponse> get copyWith =>
      __$DeliveryTrackingResponseCopyWithImpl<_DeliveryTrackingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryTrackingResponseToJson(this);
  }
}

abstract class _DeliveryTrackingResponse implements DeliveryTrackingResponse {
  factory _DeliveryTrackingResponse(int flag,
      {String? message,
      String? error,
      int? status,
      double? latitude,
      double? longitude,
      double? bearing}) = _$_DeliveryTrackingResponse;

  factory _DeliveryTrackingResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryTrackingResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  double? get latitude => throw _privateConstructorUsedError;
  @override
  double? get longitude => throw _privateConstructorUsedError;
  @override
  double? get bearing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryTrackingResponseCopyWith<_DeliveryTrackingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderHistory _$OrderHistoryFromJson(Map<String, dynamic> json) {
  return _OrderHistory.fromJson(json);
}

/// @nodoc
class _$OrderHistoryTearOff {
  const _$OrderHistoryTearOff();

  _OrderHistory call(
      {int? status,
      int? category,
      double? amount,
      String? currency,
      String? details,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'from_address') String? fromAddress,
      @JsonKey(name: 'from_latitude') double? fromLatitude,
      @JsonKey(name: 'from_longitude') double? fromLongitude,
      @JsonKey(name: 'to_address') String? toAddress,
      @JsonKey(name: 'to_latitude') double? toLatitude,
      @JsonKey(name: 'to_longitude') double? toLongitude,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'is_immediate') int? isImmediate,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_status_int') int? orderStatusInt,
      @JsonKey(name: 'delivery_charges') double? deliveryCharges,
      @JsonKey(name: 'total_distance') double? totalDistance,
      @JsonKey(name: 'total_time') int? totalTime,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'currency_code') String? currencyCode,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'product_type') int? productType,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'live_tracking') LiveTracking? liveTracking,
      @JsonKey(name: 'driver_info') Driver? driverInfo,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'created_at') DateTime? createdAt}) {
    return _OrderHistory(
      status: status,
      category: category,
      amount: amount,
      currency: currency,
      details: details,
      orderId: orderId,
      fromAddress: fromAddress,
      fromLatitude: fromLatitude,
      fromLongitude: fromLongitude,
      toAddress: toAddress,
      toLatitude: toLatitude,
      toLongitude: toLongitude,
      vehicleType: vehicleType,
      isImmediate: isImmediate,
      deliveryId: deliveryId,
      orderStatusInt: orderStatusInt,
      deliveryCharges: deliveryCharges,
      totalDistance: totalDistance,
      totalTime: totalTime,
      driverName: driverName,
      paymentMode: paymentMode,
      cityId: cityId,
      currencyCode: currencyCode,
      driverPhoneNo: driverPhoneNo,
      productType: productType,
      orderStatus: orderStatus,
      liveTracking: liveTracking,
      driverInfo: driverInfo,
      orderTime: orderTime,
      createdAt: createdAt,
    );
  }

  OrderHistory fromJson(Map<String, Object> json) {
    return OrderHistory.fromJson(json);
  }
}

/// @nodoc
const $OrderHistory = _$OrderHistoryTearOff();

/// @nodoc
mixin _$OrderHistory {
  int? get status => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_address')
  String? get fromAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_latitude')
  double? get fromLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_longitude')
  double? get fromLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_address')
  String? get toAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_latitude')
  double? get toLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_longitude')
  double? get toLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_immediate')
  int? get isImmediate => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  int? get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status_int')
  int? get orderStatusInt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_charges')
  double? get deliveryCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_distance')
  double? get totalDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_time')
  int? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_mode')
  int? get paymentMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency_code')
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_phone_no')
  String? get driverPhoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type')
  int? get productType => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'live_tracking')
  LiveTracking? get liveTracking => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_info')
  Driver? get driverInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_time')
  DateTime? get orderTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryCopyWith<OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryCopyWith<$Res> {
  factory $OrderHistoryCopyWith(
          OrderHistory value, $Res Function(OrderHistory) then) =
      _$OrderHistoryCopyWithImpl<$Res>;
  $Res call(
      {int? status,
      int? category,
      double? amount,
      String? currency,
      String? details,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'from_address') String? fromAddress,
      @JsonKey(name: 'from_latitude') double? fromLatitude,
      @JsonKey(name: 'from_longitude') double? fromLongitude,
      @JsonKey(name: 'to_address') String? toAddress,
      @JsonKey(name: 'to_latitude') double? toLatitude,
      @JsonKey(name: 'to_longitude') double? toLongitude,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'is_immediate') int? isImmediate,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_status_int') int? orderStatusInt,
      @JsonKey(name: 'delivery_charges') double? deliveryCharges,
      @JsonKey(name: 'total_distance') double? totalDistance,
      @JsonKey(name: 'total_time') int? totalTime,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'currency_code') String? currencyCode,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'product_type') int? productType,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'live_tracking') LiveTracking? liveTracking,
      @JsonKey(name: 'driver_info') Driver? driverInfo,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $LiveTrackingCopyWith<$Res>? get liveTracking;
  $DriverCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class _$OrderHistoryCopyWithImpl<$Res> implements $OrderHistoryCopyWith<$Res> {
  _$OrderHistoryCopyWithImpl(this._value, this._then);

  final OrderHistory _value;
  // ignore: unused_field
  final $Res Function(OrderHistory) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? category = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? details = freezed,
    Object? orderId = freezed,
    Object? fromAddress = freezed,
    Object? fromLatitude = freezed,
    Object? fromLongitude = freezed,
    Object? toAddress = freezed,
    Object? toLatitude = freezed,
    Object? toLongitude = freezed,
    Object? vehicleType = freezed,
    Object? isImmediate = freezed,
    Object? deliveryId = freezed,
    Object? orderStatusInt = freezed,
    Object? deliveryCharges = freezed,
    Object? totalDistance = freezed,
    Object? totalTime = freezed,
    Object? driverName = freezed,
    Object? paymentMode = freezed,
    Object? cityId = freezed,
    Object? currencyCode = freezed,
    Object? driverPhoneNo = freezed,
    Object? productType = freezed,
    Object? orderStatus = freezed,
    Object? liveTracking = freezed,
    Object? driverInfo = freezed,
    Object? orderTime = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLatitude: fromLatitude == freezed
          ? _value.fromLatitude
          : fromLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      fromLongitude: fromLongitude == freezed
          ? _value.fromLongitude
          : fromLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toLatitude: toLatitude == freezed
          ? _value.toLatitude
          : toLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      toLongitude: toLongitude == freezed
          ? _value.toLongitude
          : toLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      isImmediate: isImmediate == freezed
          ? _value.isImmediate
          : isImmediate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatusInt: orderStatusInt == freezed
          ? _value.orderStatusInt
          : orderStatusInt // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryCharges: deliveryCharges == freezed
          ? _value.deliveryCharges
          : deliveryCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPhoneNo: driverPhoneNo == freezed
          ? _value.driverPhoneNo
          : driverPhoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTracking: liveTracking == freezed
          ? _value.liveTracking
          : liveTracking // ignore: cast_nullable_to_non_nullable
              as LiveTracking?,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Driver?,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $LiveTrackingCopyWith<$Res>? get liveTracking {
    if (_value.liveTracking == null) {
      return null;
    }

    return $LiveTrackingCopyWith<$Res>(_value.liveTracking!, (value) {
      return _then(_value.copyWith(liveTracking: value));
    });
  }

  @override
  $DriverCopyWith<$Res>? get driverInfo {
    if (_value.driverInfo == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driverInfo!, (value) {
      return _then(_value.copyWith(driverInfo: value));
    });
  }
}

/// @nodoc
abstract class _$OrderHistoryCopyWith<$Res>
    implements $OrderHistoryCopyWith<$Res> {
  factory _$OrderHistoryCopyWith(
          _OrderHistory value, $Res Function(_OrderHistory) then) =
      __$OrderHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? status,
      int? category,
      double? amount,
      String? currency,
      String? details,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'from_address') String? fromAddress,
      @JsonKey(name: 'from_latitude') double? fromLatitude,
      @JsonKey(name: 'from_longitude') double? fromLongitude,
      @JsonKey(name: 'to_address') String? toAddress,
      @JsonKey(name: 'to_latitude') double? toLatitude,
      @JsonKey(name: 'to_longitude') double? toLongitude,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'is_immediate') int? isImmediate,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_status_int') int? orderStatusInt,
      @JsonKey(name: 'delivery_charges') double? deliveryCharges,
      @JsonKey(name: 'total_distance') double? totalDistance,
      @JsonKey(name: 'total_time') int? totalTime,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'currency_code') String? currencyCode,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'product_type') int? productType,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'live_tracking') LiveTracking? liveTracking,
      @JsonKey(name: 'driver_info') Driver? driverInfo,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $LiveTrackingCopyWith<$Res>? get liveTracking;
  @override
  $DriverCopyWith<$Res>? get driverInfo;
}

/// @nodoc
class __$OrderHistoryCopyWithImpl<$Res> extends _$OrderHistoryCopyWithImpl<$Res>
    implements _$OrderHistoryCopyWith<$Res> {
  __$OrderHistoryCopyWithImpl(
      _OrderHistory _value, $Res Function(_OrderHistory) _then)
      : super(_value, (v) => _then(v as _OrderHistory));

  @override
  _OrderHistory get _value => super._value as _OrderHistory;

  @override
  $Res call({
    Object? status = freezed,
    Object? category = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? details = freezed,
    Object? orderId = freezed,
    Object? fromAddress = freezed,
    Object? fromLatitude = freezed,
    Object? fromLongitude = freezed,
    Object? toAddress = freezed,
    Object? toLatitude = freezed,
    Object? toLongitude = freezed,
    Object? vehicleType = freezed,
    Object? isImmediate = freezed,
    Object? deliveryId = freezed,
    Object? orderStatusInt = freezed,
    Object? deliveryCharges = freezed,
    Object? totalDistance = freezed,
    Object? totalTime = freezed,
    Object? driverName = freezed,
    Object? paymentMode = freezed,
    Object? cityId = freezed,
    Object? currencyCode = freezed,
    Object? driverPhoneNo = freezed,
    Object? productType = freezed,
    Object? orderStatus = freezed,
    Object? liveTracking = freezed,
    Object? driverInfo = freezed,
    Object? orderTime = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_OrderHistory(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      fromAddress: fromAddress == freezed
          ? _value.fromAddress
          : fromAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLatitude: fromLatitude == freezed
          ? _value.fromLatitude
          : fromLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      fromLongitude: fromLongitude == freezed
          ? _value.fromLongitude
          : fromLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      toAddress: toAddress == freezed
          ? _value.toAddress
          : toAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      toLatitude: toLatitude == freezed
          ? _value.toLatitude
          : toLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      toLongitude: toLongitude == freezed
          ? _value.toLongitude
          : toLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as int?,
      isImmediate: isImmediate == freezed
          ? _value.isImmediate
          : isImmediate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatusInt: orderStatusInt == freezed
          ? _value.orderStatusInt
          : orderStatusInt // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryCharges: deliveryCharges == freezed
          ? _value.deliveryCharges
          : deliveryCharges // ignore: cast_nullable_to_non_nullable
              as double?,
      totalDistance: totalDistance == freezed
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as double?,
      totalTime: totalTime == freezed
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: paymentMode == freezed
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as int?,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: currencyCode == freezed
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      driverPhoneNo: driverPhoneNo == freezed
          ? _value.driverPhoneNo
          : driverPhoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: orderStatus == freezed
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      liveTracking: liveTracking == freezed
          ? _value.liveTracking
          : liveTracking // ignore: cast_nullable_to_non_nullable
              as LiveTracking?,
      driverInfo: driverInfo == freezed
          ? _value.driverInfo
          : driverInfo // ignore: cast_nullable_to_non_nullable
              as Driver?,
      orderTime: orderTime == freezed
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistory implements _OrderHistory {
  _$_OrderHistory(
      {this.status,
      this.category,
      this.amount,
      this.currency,
      this.details,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'from_address') this.fromAddress,
      @JsonKey(name: 'from_latitude') this.fromLatitude,
      @JsonKey(name: 'from_longitude') this.fromLongitude,
      @JsonKey(name: 'to_address') this.toAddress,
      @JsonKey(name: 'to_latitude') this.toLatitude,
      @JsonKey(name: 'to_longitude') this.toLongitude,
      @JsonKey(name: 'vehicle_type') this.vehicleType,
      @JsonKey(name: 'is_immediate') this.isImmediate,
      @JsonKey(name: 'delivery_id') this.deliveryId,
      @JsonKey(name: 'order_status_int') this.orderStatusInt,
      @JsonKey(name: 'delivery_charges') this.deliveryCharges,
      @JsonKey(name: 'total_distance') this.totalDistance,
      @JsonKey(name: 'total_time') this.totalTime,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'payment_mode') this.paymentMode,
      @JsonKey(name: 'city_id') this.cityId,
      @JsonKey(name: 'currency_code') this.currencyCode,
      @JsonKey(name: 'driver_phone_no') this.driverPhoneNo,
      @JsonKey(name: 'product_type') this.productType,
      @JsonKey(name: 'order_status') this.orderStatus,
      @JsonKey(name: 'live_tracking') this.liveTracking,
      @JsonKey(name: 'driver_info') this.driverInfo,
      @JsonKey(name: 'order_time') this.orderTime,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$_OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderHistoryFromJson(json);

  @override
  final int? status;
  @override
  final int? category;
  @override
  final double? amount;
  @override
  final String? currency;
  @override
  final String? details;
  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'from_address')
  final String? fromAddress;
  @override
  @JsonKey(name: 'from_latitude')
  final double? fromLatitude;
  @override
  @JsonKey(name: 'from_longitude')
  final double? fromLongitude;
  @override
  @JsonKey(name: 'to_address')
  final String? toAddress;
  @override
  @JsonKey(name: 'to_latitude')
  final double? toLatitude;
  @override
  @JsonKey(name: 'to_longitude')
  final double? toLongitude;
  @override
  @JsonKey(name: 'vehicle_type')
  final int? vehicleType;
  @override
  @JsonKey(name: 'is_immediate')
  final int? isImmediate;
  @override
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;
  @override
  @JsonKey(name: 'order_status_int')
  final int? orderStatusInt;
  @override
  @JsonKey(name: 'delivery_charges')
  final double? deliveryCharges;
  @override
  @JsonKey(name: 'total_distance')
  final double? totalDistance;
  @override
  @JsonKey(name: 'total_time')
  final int? totalTime;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'payment_mode')
  final int? paymentMode;
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'currency_code')
  final String? currencyCode;
  @override
  @JsonKey(name: 'driver_phone_no')
  final String? driverPhoneNo;
  @override
  @JsonKey(name: 'product_type')
  final int? productType;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;
  @override
  @JsonKey(name: 'live_tracking')
  final LiveTracking? liveTracking;
  @override
  @JsonKey(name: 'driver_info')
  final Driver? driverInfo;
  @override
  @JsonKey(name: 'order_time')
  final DateTime? orderTime;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'OrderHistory(status: $status, category: $category, amount: $amount, currency: $currency, details: $details, orderId: $orderId, fromAddress: $fromAddress, fromLatitude: $fromLatitude, fromLongitude: $fromLongitude, toAddress: $toAddress, toLatitude: $toLatitude, toLongitude: $toLongitude, vehicleType: $vehicleType, isImmediate: $isImmediate, deliveryId: $deliveryId, orderStatusInt: $orderStatusInt, deliveryCharges: $deliveryCharges, totalDistance: $totalDistance, totalTime: $totalTime, driverName: $driverName, paymentMode: $paymentMode, cityId: $cityId, currencyCode: $currencyCode, driverPhoneNo: $driverPhoneNo, productType: $productType, orderStatus: $orderStatus, liveTracking: $liveTracking, driverInfo: $driverInfo, orderTime: $orderTime, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderHistory &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.fromAddress, fromAddress) ||
                const DeepCollectionEquality()
                    .equals(other.fromAddress, fromAddress)) &&
            (identical(other.fromLatitude, fromLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.fromLatitude, fromLatitude)) &&
            (identical(other.fromLongitude, fromLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.fromLongitude, fromLongitude)) &&
            (identical(other.toAddress, toAddress) ||
                const DeepCollectionEquality()
                    .equals(other.toAddress, toAddress)) &&
            (identical(other.toLatitude, toLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.toLatitude, toLatitude)) &&
            (identical(other.toLongitude, toLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.toLongitude, toLongitude)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)) &&
            (identical(other.isImmediate, isImmediate) ||
                const DeepCollectionEquality()
                    .equals(other.isImmediate, isImmediate)) &&
            (identical(other.deliveryId, deliveryId) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryId, deliveryId)) &&
            (identical(other.orderStatusInt, orderStatusInt) ||
                const DeepCollectionEquality()
                    .equals(other.orderStatusInt, orderStatusInt)) &&
            (identical(other.deliveryCharges, deliveryCharges) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryCharges, deliveryCharges)) &&
            (identical(other.totalDistance, totalDistance) ||
                const DeepCollectionEquality()
                    .equals(other.totalDistance, totalDistance)) &&
            (identical(other.totalTime, totalTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalTime, totalTime)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.paymentMode, paymentMode) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMode, paymentMode)) &&
            (identical(other.cityId, cityId) ||
                const DeepCollectionEquality().equals(other.cityId, cityId)) &&
            (identical(other.currencyCode, currencyCode) ||
                const DeepCollectionEquality()
                    .equals(other.currencyCode, currencyCode)) &&
            (identical(other.driverPhoneNo, driverPhoneNo) || const DeepCollectionEquality().equals(other.driverPhoneNo, driverPhoneNo)) &&
            (identical(other.productType, productType) || const DeepCollectionEquality().equals(other.productType, productType)) &&
            (identical(other.orderStatus, orderStatus) || const DeepCollectionEquality().equals(other.orderStatus, orderStatus)) &&
            (identical(other.liveTracking, liveTracking) || const DeepCollectionEquality().equals(other.liveTracking, liveTracking)) &&
            (identical(other.driverInfo, driverInfo) || const DeepCollectionEquality().equals(other.driverInfo, driverInfo)) &&
            (identical(other.orderTime, orderTime) || const DeepCollectionEquality().equals(other.orderTime, orderTime)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(fromAddress) ^
      const DeepCollectionEquality().hash(fromLatitude) ^
      const DeepCollectionEquality().hash(fromLongitude) ^
      const DeepCollectionEquality().hash(toAddress) ^
      const DeepCollectionEquality().hash(toLatitude) ^
      const DeepCollectionEquality().hash(toLongitude) ^
      const DeepCollectionEquality().hash(vehicleType) ^
      const DeepCollectionEquality().hash(isImmediate) ^
      const DeepCollectionEquality().hash(deliveryId) ^
      const DeepCollectionEquality().hash(orderStatusInt) ^
      const DeepCollectionEquality().hash(deliveryCharges) ^
      const DeepCollectionEquality().hash(totalDistance) ^
      const DeepCollectionEquality().hash(totalTime) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(paymentMode) ^
      const DeepCollectionEquality().hash(cityId) ^
      const DeepCollectionEquality().hash(currencyCode) ^
      const DeepCollectionEquality().hash(driverPhoneNo) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(orderStatus) ^
      const DeepCollectionEquality().hash(liveTracking) ^
      const DeepCollectionEquality().hash(driverInfo) ^
      const DeepCollectionEquality().hash(orderTime) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryCopyWith<_OrderHistory> get copyWith =>
      __$OrderHistoryCopyWithImpl<_OrderHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderHistoryToJson(this);
  }
}

abstract class _OrderHistory implements OrderHistory {
  factory _OrderHistory(
      {int? status,
      int? category,
      double? amount,
      String? currency,
      String? details,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'from_address') String? fromAddress,
      @JsonKey(name: 'from_latitude') double? fromLatitude,
      @JsonKey(name: 'from_longitude') double? fromLongitude,
      @JsonKey(name: 'to_address') String? toAddress,
      @JsonKey(name: 'to_latitude') double? toLatitude,
      @JsonKey(name: 'to_longitude') double? toLongitude,
      @JsonKey(name: 'vehicle_type') int? vehicleType,
      @JsonKey(name: 'is_immediate') int? isImmediate,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'order_status_int') int? orderStatusInt,
      @JsonKey(name: 'delivery_charges') double? deliveryCharges,
      @JsonKey(name: 'total_distance') double? totalDistance,
      @JsonKey(name: 'total_time') int? totalTime,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'payment_mode') int? paymentMode,
      @JsonKey(name: 'city_id') int? cityId,
      @JsonKey(name: 'currency_code') String? currencyCode,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'product_type') int? productType,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'live_tracking') LiveTracking? liveTracking,
      @JsonKey(name: 'driver_info') Driver? driverInfo,
      @JsonKey(name: 'order_time') DateTime? orderTime,
      @JsonKey(name: 'created_at') DateTime? createdAt}) = _$_OrderHistory;

  factory _OrderHistory.fromJson(Map<String, dynamic> json) =
      _$_OrderHistory.fromJson;

  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  int? get category => throw _privateConstructorUsedError;
  @override
  double? get amount => throw _privateConstructorUsedError;
  @override
  String? get currency => throw _privateConstructorUsedError;
  @override
  String? get details => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'from_address')
  String? get fromAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'from_latitude')
  double? get fromLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'from_longitude')
  double? get fromLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to_address')
  String? get toAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to_latitude')
  double? get toLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'to_longitude')
  double? get toLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_type')
  int? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_immediate')
  int? get isImmediate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_id')
  int? get deliveryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_status_int')
  int? get orderStatusInt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_charges')
  double? get deliveryCharges => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_distance')
  double? get totalDistance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_time')
  int? get totalTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payment_mode')
  int? get paymentMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'currency_code')
  String? get currencyCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_phone_no')
  String? get driverPhoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'product_type')
  int? get productType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'live_tracking')
  LiveTracking? get liveTracking => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_info')
  Driver? get driverInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_time')
  DateTime? get orderTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryCopyWith<_OrderHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveTracking _$LiveTrackingFromJson(Map<String, dynamic> json) {
  return _LiveTracking.fromJson(json);
}

/// @nodoc
class _$LiveTrackingTearOff {
  const _$LiveTrackingTearOff();

  _LiveTracking call(
      {String? message,
      String? error,
      int? status,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'delivery_latitude') double? deliveryLatitude,
      @JsonKey(name: 'delivery_longitude') double? deliveryLongitude,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'pickup_completed') int? pickupCompleted}) {
    return _LiveTracking(
      message: message,
      error: error,
      status: status,
      deliveryId: deliveryId,
      deliveryLatitude: deliveryLatitude,
      deliveryLongitude: deliveryLongitude,
      pickupLatitude: pickupLatitude,
      pickupLongitude: pickupLongitude,
      driverPhoneNo: driverPhoneNo,
      driverName: driverName,
      driverImage: driverImage,
      driverId: driverId,
      pickupCompleted: pickupCompleted,
    );
  }

  LiveTracking fromJson(Map<String, Object> json) {
    return LiveTracking.fromJson(json);
  }
}

/// @nodoc
const $LiveTracking = _$LiveTrackingTearOff();

/// @nodoc
mixin _$LiveTracking {
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_id')
  int? get deliveryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_latitude')
  double? get deliveryLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_longitude')
  double? get deliveryLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_phone_no')
  String? get driverPhoneNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_completed')
  int? get pickupCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveTrackingCopyWith<LiveTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveTrackingCopyWith<$Res> {
  factory $LiveTrackingCopyWith(
          LiveTracking value, $Res Function(LiveTracking) then) =
      _$LiveTrackingCopyWithImpl<$Res>;
  $Res call(
      {String? message,
      String? error,
      int? status,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'delivery_latitude') double? deliveryLatitude,
      @JsonKey(name: 'delivery_longitude') double? deliveryLongitude,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'pickup_completed') int? pickupCompleted});
}

/// @nodoc
class _$LiveTrackingCopyWithImpl<$Res> implements $LiveTrackingCopyWith<$Res> {
  _$LiveTrackingCopyWithImpl(this._value, this._then);

  final LiveTracking _value;
  // ignore: unused_field
  final $Res Function(LiveTracking) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? deliveryId = freezed,
    Object? deliveryLatitude = freezed,
    Object? deliveryLongitude = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? driverPhoneNo = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? driverId = freezed,
    Object? pickupCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryLatitude: deliveryLatitude == freezed
          ? _value.deliveryLatitude
          : deliveryLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryLongitude: deliveryLongitude == freezed
          ? _value.deliveryLongitude
          : deliveryLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      driverPhoneNo: driverPhoneNo == freezed
          ? _value.driverPhoneNo
          : driverPhoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupCompleted: pickupCompleted == freezed
          ? _value.pickupCompleted
          : pickupCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$LiveTrackingCopyWith<$Res>
    implements $LiveTrackingCopyWith<$Res> {
  factory _$LiveTrackingCopyWith(
          _LiveTracking value, $Res Function(_LiveTracking) then) =
      __$LiveTrackingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? message,
      String? error,
      int? status,
      @JsonKey(name: 'delivery_id') int? deliveryId,
      @JsonKey(name: 'delivery_latitude') double? deliveryLatitude,
      @JsonKey(name: 'delivery_longitude') double? deliveryLongitude,
      @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
      @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
      @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
      @JsonKey(name: 'driver_name') String? driverName,
      @JsonKey(name: 'driver_image') String? driverImage,
      @JsonKey(name: 'driver_id') int? driverId,
      @JsonKey(name: 'pickup_completed') int? pickupCompleted});
}

/// @nodoc
class __$LiveTrackingCopyWithImpl<$Res> extends _$LiveTrackingCopyWithImpl<$Res>
    implements _$LiveTrackingCopyWith<$Res> {
  __$LiveTrackingCopyWithImpl(
      _LiveTracking _value, $Res Function(_LiveTracking) _then)
      : super(_value, (v) => _then(v as _LiveTracking));

  @override
  _LiveTracking get _value => super._value as _LiveTracking;

  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? deliveryId = freezed,
    Object? deliveryLatitude = freezed,
    Object? deliveryLongitude = freezed,
    Object? pickupLatitude = freezed,
    Object? pickupLongitude = freezed,
    Object? driverPhoneNo = freezed,
    Object? driverName = freezed,
    Object? driverImage = freezed,
    Object? driverId = freezed,
    Object? pickupCompleted = freezed,
  }) {
    return _then(_LiveTracking(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryId: deliveryId == freezed
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryLatitude: deliveryLatitude == freezed
          ? _value.deliveryLatitude
          : deliveryLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryLongitude: deliveryLongitude == freezed
          ? _value.deliveryLongitude
          : deliveryLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLatitude: pickupLatitude == freezed
          ? _value.pickupLatitude
          : pickupLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLongitude: pickupLongitude == freezed
          ? _value.pickupLongitude
          : pickupLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      driverPhoneNo: driverPhoneNo == freezed
          ? _value.driverPhoneNo
          : driverPhoneNo // ignore: cast_nullable_to_non_nullable
              as String?,
      driverName: driverName == freezed
          ? _value.driverName
          : driverName // ignore: cast_nullable_to_non_nullable
              as String?,
      driverImage: driverImage == freezed
          ? _value.driverImage
          : driverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupCompleted: pickupCompleted == freezed
          ? _value.pickupCompleted
          : pickupCompleted // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveTracking implements _LiveTracking {
  _$_LiveTracking(
      {this.message,
      this.error,
      this.status,
      @JsonKey(name: 'delivery_id') this.deliveryId,
      @JsonKey(name: 'delivery_latitude') this.deliveryLatitude,
      @JsonKey(name: 'delivery_longitude') this.deliveryLongitude,
      @JsonKey(name: 'pickup_latitude') this.pickupLatitude,
      @JsonKey(name: 'pickup_longitude') this.pickupLongitude,
      @JsonKey(name: 'driver_phone_no') this.driverPhoneNo,
      @JsonKey(name: 'driver_name') this.driverName,
      @JsonKey(name: 'driver_image') this.driverImage,
      @JsonKey(name: 'driver_id') this.driverId,
      @JsonKey(name: 'pickup_completed') this.pickupCompleted});

  factory _$_LiveTracking.fromJson(Map<String, dynamic> json) =>
      _$_$_LiveTrackingFromJson(json);

  @override
  final String? message;
  @override
  final String? error;
  @override
  final int? status;
  @override
  @JsonKey(name: 'delivery_id')
  final int? deliveryId;
  @override
  @JsonKey(name: 'delivery_latitude')
  final double? deliveryLatitude;
  @override
  @JsonKey(name: 'delivery_longitude')
  final double? deliveryLongitude;
  @override
  @JsonKey(name: 'pickup_latitude')
  final double? pickupLatitude;
  @override
  @JsonKey(name: 'pickup_longitude')
  final double? pickupLongitude;
  @override
  @JsonKey(name: 'driver_phone_no')
  final String? driverPhoneNo;
  @override
  @JsonKey(name: 'driver_name')
  final String? driverName;
  @override
  @JsonKey(name: 'driver_image')
  final String? driverImage;
  @override
  @JsonKey(name: 'driver_id')
  final int? driverId;
  @override
  @JsonKey(name: 'pickup_completed')
  final int? pickupCompleted;

  @override
  String toString() {
    return 'LiveTracking(message: $message, error: $error, status: $status, deliveryId: $deliveryId, deliveryLatitude: $deliveryLatitude, deliveryLongitude: $deliveryLongitude, pickupLatitude: $pickupLatitude, pickupLongitude: $pickupLongitude, driverPhoneNo: $driverPhoneNo, driverName: $driverName, driverImage: $driverImage, driverId: $driverId, pickupCompleted: $pickupCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LiveTracking &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryId, deliveryId) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryId, deliveryId)) &&
            (identical(other.deliveryLatitude, deliveryLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryLatitude, deliveryLatitude)) &&
            (identical(other.deliveryLongitude, deliveryLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryLongitude, deliveryLongitude)) &&
            (identical(other.pickupLatitude, pickupLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLatitude, pickupLatitude)) &&
            (identical(other.pickupLongitude, pickupLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.pickupLongitude, pickupLongitude)) &&
            (identical(other.driverPhoneNo, driverPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.driverPhoneNo, driverPhoneNo)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.driverImage, driverImage) ||
                const DeepCollectionEquality()
                    .equals(other.driverImage, driverImage)) &&
            (identical(other.driverId, driverId) ||
                const DeepCollectionEquality()
                    .equals(other.driverId, driverId)) &&
            (identical(other.pickupCompleted, pickupCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.pickupCompleted, pickupCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryId) ^
      const DeepCollectionEquality().hash(deliveryLatitude) ^
      const DeepCollectionEquality().hash(deliveryLongitude) ^
      const DeepCollectionEquality().hash(pickupLatitude) ^
      const DeepCollectionEquality().hash(pickupLongitude) ^
      const DeepCollectionEquality().hash(driverPhoneNo) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(driverImage) ^
      const DeepCollectionEquality().hash(driverId) ^
      const DeepCollectionEquality().hash(pickupCompleted);

  @JsonKey(ignore: true)
  @override
  _$LiveTrackingCopyWith<_LiveTracking> get copyWith =>
      __$LiveTrackingCopyWithImpl<_LiveTracking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LiveTrackingToJson(this);
  }
}

abstract class _LiveTracking implements LiveTracking {
  factory _LiveTracking(
          {String? message,
          String? error,
          int? status,
          @JsonKey(name: 'delivery_id') int? deliveryId,
          @JsonKey(name: 'delivery_latitude') double? deliveryLatitude,
          @JsonKey(name: 'delivery_longitude') double? deliveryLongitude,
          @JsonKey(name: 'pickup_latitude') double? pickupLatitude,
          @JsonKey(name: 'pickup_longitude') double? pickupLongitude,
          @JsonKey(name: 'driver_phone_no') String? driverPhoneNo,
          @JsonKey(name: 'driver_name') String? driverName,
          @JsonKey(name: 'driver_image') String? driverImage,
          @JsonKey(name: 'driver_id') int? driverId,
          @JsonKey(name: 'pickup_completed') int? pickupCompleted}) =
      _$_LiveTracking;

  factory _LiveTracking.fromJson(Map<String, dynamic> json) =
      _$_LiveTracking.fromJson;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_id')
  int? get deliveryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_latitude')
  double? get deliveryLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_longitude')
  double? get deliveryLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_latitude')
  double? get pickupLatitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_longitude')
  double? get pickupLongitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_phone_no')
  String? get driverPhoneNo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_name')
  String? get driverName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_image')
  String? get driverImage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'driver_id')
  int? get driverId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pickup_completed')
  int? get pickupCompleted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LiveTrackingCopyWith<_LiveTracking> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderHistoryResponse _$OrderHistoryResponseFromJson(Map<String, dynamic> json) {
  return _OrderHistoryResponse.fromJson(json);
}

/// @nodoc
class _$OrderHistoryResponseTearOff {
  const _$OrderHistoryResponseTearOff();

  _OrderHistoryResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'order_history') List<OrderHistory>? orderHistory,
      @JsonKey(name: 'history_size') int? historySize}) {
    return _OrderHistoryResponse(
      flag,
      message: message,
      error: error,
      orderHistory: orderHistory,
      historySize: historySize,
    );
  }

  OrderHistoryResponse fromJson(Map<String, Object> json) {
    return OrderHistoryResponse.fromJson(json);
  }
}

/// @nodoc
const $OrderHistoryResponse = _$OrderHistoryResponseTearOff();

/// @nodoc
mixin _$OrderHistoryResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_history')
  List<OrderHistory>? get orderHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'history_size')
  int? get historySize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryResponseCopyWith<OrderHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryResponseCopyWith<$Res> {
  factory $OrderHistoryResponseCopyWith(OrderHistoryResponse value,
          $Res Function(OrderHistoryResponse) then) =
      _$OrderHistoryResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'order_history') List<OrderHistory>? orderHistory,
      @JsonKey(name: 'history_size') int? historySize});
}

/// @nodoc
class _$OrderHistoryResponseCopyWithImpl<$Res>
    implements $OrderHistoryResponseCopyWith<$Res> {
  _$OrderHistoryResponseCopyWithImpl(this._value, this._then);

  final OrderHistoryResponse _value;
  // ignore: unused_field
  final $Res Function(OrderHistoryResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? orderHistory = freezed,
    Object? historySize = freezed,
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
      orderHistory: orderHistory == freezed
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderHistory>?,
      historySize: historySize == freezed
          ? _value.historySize
          : historySize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OrderHistoryResponseCopyWith<$Res>
    implements $OrderHistoryResponseCopyWith<$Res> {
  factory _$OrderHistoryResponseCopyWith(_OrderHistoryResponse value,
          $Res Function(_OrderHistoryResponse) then) =
      __$OrderHistoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'order_history') List<OrderHistory>? orderHistory,
      @JsonKey(name: 'history_size') int? historySize});
}

/// @nodoc
class __$OrderHistoryResponseCopyWithImpl<$Res>
    extends _$OrderHistoryResponseCopyWithImpl<$Res>
    implements _$OrderHistoryResponseCopyWith<$Res> {
  __$OrderHistoryResponseCopyWithImpl(
      _OrderHistoryResponse _value, $Res Function(_OrderHistoryResponse) _then)
      : super(_value, (v) => _then(v as _OrderHistoryResponse));

  @override
  _OrderHistoryResponse get _value => super._value as _OrderHistoryResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? orderHistory = freezed,
    Object? historySize = freezed,
  }) {
    return _then(_OrderHistoryResponse(
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
      orderHistory: orderHistory == freezed
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as List<OrderHistory>?,
      historySize: historySize == freezed
          ? _value.historySize
          : historySize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryResponse implements _OrderHistoryResponse {
  _$_OrderHistoryResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'order_history') this.orderHistory,
      @JsonKey(name: 'history_size') this.historySize});

  factory _$_OrderHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderHistoryResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'order_history')
  final List<OrderHistory>? orderHistory;
  @override
  @JsonKey(name: 'history_size')
  final int? historySize;

  @override
  String toString() {
    return 'OrderHistoryResponse(flag: $flag, message: $message, error: $error, orderHistory: $orderHistory, historySize: $historySize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderHistoryResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.orderHistory, orderHistory) ||
                const DeepCollectionEquality()
                    .equals(other.orderHistory, orderHistory)) &&
            (identical(other.historySize, historySize) ||
                const DeepCollectionEquality()
                    .equals(other.historySize, historySize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(orderHistory) ^
      const DeepCollectionEquality().hash(historySize);

  @JsonKey(ignore: true)
  @override
  _$OrderHistoryResponseCopyWith<_OrderHistoryResponse> get copyWith =>
      __$OrderHistoryResponseCopyWithImpl<_OrderHistoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderHistoryResponseToJson(this);
  }
}

abstract class _OrderHistoryResponse implements OrderHistoryResponse {
  factory _OrderHistoryResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'order_history') List<OrderHistory>? orderHistory,
          @JsonKey(name: 'history_size') int? historySize}) =
      _$_OrderHistoryResponse;

  factory _OrderHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_history')
  List<OrderHistory>? get orderHistory => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'history_size')
  int? get historySize => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderHistoryResponseCopyWith<_OrderHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CancellationReasonResponse _$CancellationReasonResponseFromJson(
    Map<String, dynamic> json) {
  return _CancellationReasonResponse.fromJson(json);
}

/// @nodoc
class _$CancellationReasonResponseTearOff {
  const _$CancellationReasonResponseTearOff();

  _CancellationReasonResponse call(int flag,
      {String? message,
      String? error,
      @JsonKey(name: 'cancel_options') List<String>? cancelOptions,
      @JsonKey(name: 'additional_reasons') String? additionalReasons}) {
    return _CancellationReasonResponse(
      flag,
      message: message,
      error: error,
      cancelOptions: cancelOptions,
      additionalReasons: additionalReasons,
    );
  }

  CancellationReasonResponse fromJson(Map<String, Object> json) {
    return CancellationReasonResponse.fromJson(json);
  }
}

/// @nodoc
const $CancellationReasonResponse = _$CancellationReasonResponseTearOff();

/// @nodoc
mixin _$CancellationReasonResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_options')
  List<String>? get cancelOptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_reasons')
  String? get additionalReasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancellationReasonResponseCopyWith<CancellationReasonResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationReasonResponseCopyWith<$Res> {
  factory $CancellationReasonResponseCopyWith(CancellationReasonResponse value,
          $Res Function(CancellationReasonResponse) then) =
      _$CancellationReasonResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'cancel_options') List<String>? cancelOptions,
      @JsonKey(name: 'additional_reasons') String? additionalReasons});
}

/// @nodoc
class _$CancellationReasonResponseCopyWithImpl<$Res>
    implements $CancellationReasonResponseCopyWith<$Res> {
  _$CancellationReasonResponseCopyWithImpl(this._value, this._then);

  final CancellationReasonResponse _value;
  // ignore: unused_field
  final $Res Function(CancellationReasonResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? cancelOptions = freezed,
    Object? additionalReasons = freezed,
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
      cancelOptions: cancelOptions == freezed
          ? _value.cancelOptions
          : cancelOptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalReasons: additionalReasons == freezed
          ? _value.additionalReasons
          : additionalReasons // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CancellationReasonResponseCopyWith<$Res>
    implements $CancellationReasonResponseCopyWith<$Res> {
  factory _$CancellationReasonResponseCopyWith(
          _CancellationReasonResponse value,
          $Res Function(_CancellationReasonResponse) then) =
      __$CancellationReasonResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      @JsonKey(name: 'cancel_options') List<String>? cancelOptions,
      @JsonKey(name: 'additional_reasons') String? additionalReasons});
}

/// @nodoc
class __$CancellationReasonResponseCopyWithImpl<$Res>
    extends _$CancellationReasonResponseCopyWithImpl<$Res>
    implements _$CancellationReasonResponseCopyWith<$Res> {
  __$CancellationReasonResponseCopyWithImpl(_CancellationReasonResponse _value,
      $Res Function(_CancellationReasonResponse) _then)
      : super(_value, (v) => _then(v as _CancellationReasonResponse));

  @override
  _CancellationReasonResponse get _value =>
      super._value as _CancellationReasonResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? cancelOptions = freezed,
    Object? additionalReasons = freezed,
  }) {
    return _then(_CancellationReasonResponse(
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
      cancelOptions: cancelOptions == freezed
          ? _value.cancelOptions
          : cancelOptions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      additionalReasons: additionalReasons == freezed
          ? _value.additionalReasons
          : additionalReasons // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancellationReasonResponse implements _CancellationReasonResponse {
  _$_CancellationReasonResponse(this.flag,
      {this.message,
      this.error,
      @JsonKey(name: 'cancel_options') this.cancelOptions,
      @JsonKey(name: 'additional_reasons') this.additionalReasons});

  factory _$_CancellationReasonResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CancellationReasonResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey(name: 'cancel_options')
  final List<String>? cancelOptions;
  @override
  @JsonKey(name: 'additional_reasons')
  final String? additionalReasons;

  @override
  String toString() {
    return 'CancellationReasonResponse(flag: $flag, message: $message, error: $error, cancelOptions: $cancelOptions, additionalReasons: $additionalReasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CancellationReasonResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.cancelOptions, cancelOptions) ||
                const DeepCollectionEquality()
                    .equals(other.cancelOptions, cancelOptions)) &&
            (identical(other.additionalReasons, additionalReasons) ||
                const DeepCollectionEquality()
                    .equals(other.additionalReasons, additionalReasons)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(cancelOptions) ^
      const DeepCollectionEquality().hash(additionalReasons);

  @JsonKey(ignore: true)
  @override
  _$CancellationReasonResponseCopyWith<_CancellationReasonResponse>
      get copyWith => __$CancellationReasonResponseCopyWithImpl<
          _CancellationReasonResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CancellationReasonResponseToJson(this);
  }
}

abstract class _CancellationReasonResponse
    implements CancellationReasonResponse {
  factory _CancellationReasonResponse(int flag,
          {String? message,
          String? error,
          @JsonKey(name: 'cancel_options') List<String>? cancelOptions,
          @JsonKey(name: 'additional_reasons') String? additionalReasons}) =
      _$_CancellationReasonResponse;

  factory _CancellationReasonResponse.fromJson(Map<String, dynamic> json) =
      _$_CancellationReasonResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cancel_options')
  List<String>? get cancelOptions => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'additional_reasons')
  String? get additionalReasons => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancellationReasonResponseCopyWith<_CancellationReasonResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OrderDeliveryResponse _$OrderDeliveryResponseFromJson(
    Map<String, dynamic> json) {
  return _OrderDeliveryResponse.fromJson(json);
}

/// @nodoc
class _$OrderDeliveryResponseTearOff {
  const _$OrderDeliveryResponseTearOff();

  _OrderDeliveryResponse call(int flag,
      {String? message,
      String? error,
      int? status,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'fugu_channel_name') String? channelName,
      @JsonKey(name: 'fugu_channel_id') String? channelId}) {
    return _OrderDeliveryResponse(
      flag,
      message: message,
      error: error,
      status: status,
      orderId: orderId,
      channelName: channelName,
      channelId: channelId,
    );
  }

  OrderDeliveryResponse fromJson(Map<String, Object> json) {
    return OrderDeliveryResponse.fromJson(json);
  }
}

/// @nodoc
const $OrderDeliveryResponse = _$OrderDeliveryResponseTearOff();

/// @nodoc
mixin _$OrderDeliveryResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fugu_channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'fugu_channel_id')
  String? get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDeliveryResponseCopyWith<OrderDeliveryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDeliveryResponseCopyWith<$Res> {
  factory $OrderDeliveryResponseCopyWith(OrderDeliveryResponse value,
          $Res Function(OrderDeliveryResponse) then) =
      _$OrderDeliveryResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      int? status,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'fugu_channel_name') String? channelName,
      @JsonKey(name: 'fugu_channel_id') String? channelId});
}

/// @nodoc
class _$OrderDeliveryResponseCopyWithImpl<$Res>
    implements $OrderDeliveryResponseCopyWith<$Res> {
  _$OrderDeliveryResponseCopyWithImpl(this._value, this._then);

  final OrderDeliveryResponse _value;
  // ignore: unused_field
  final $Res Function(OrderDeliveryResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? orderId = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderDeliveryResponseCopyWith<$Res>
    implements $OrderDeliveryResponseCopyWith<$Res> {
  factory _$OrderDeliveryResponseCopyWith(_OrderDeliveryResponse value,
          $Res Function(_OrderDeliveryResponse) then) =
      __$OrderDeliveryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      int? status,
      @JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'fugu_channel_name') String? channelName,
      @JsonKey(name: 'fugu_channel_id') String? channelId});
}

/// @nodoc
class __$OrderDeliveryResponseCopyWithImpl<$Res>
    extends _$OrderDeliveryResponseCopyWithImpl<$Res>
    implements _$OrderDeliveryResponseCopyWith<$Res> {
  __$OrderDeliveryResponseCopyWithImpl(_OrderDeliveryResponse _value,
      $Res Function(_OrderDeliveryResponse) _then)
      : super(_value, (v) => _then(v as _OrderDeliveryResponse));

  @override
  _OrderDeliveryResponse get _value => super._value as _OrderDeliveryResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? status = freezed,
    Object? orderId = freezed,
    Object? channelName = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_OrderDeliveryResponse(
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelName: channelName == freezed
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDeliveryResponse implements _OrderDeliveryResponse {
  _$_OrderDeliveryResponse(this.flag,
      {this.message,
      this.error,
      this.status,
      @JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'fugu_channel_name') this.channelName,
      @JsonKey(name: 'fugu_channel_id') this.channelId});

  factory _$_OrderDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDeliveryResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final int? status;
  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'fugu_channel_name')
  final String? channelName;
  @override
  @JsonKey(name: 'fugu_channel_id')
  final String? channelId;

  @override
  String toString() {
    return 'OrderDeliveryResponse(flag: $flag, message: $message, error: $error, status: $status, orderId: $orderId, channelName: $channelName, channelId: $channelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDeliveryResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.channelName, channelName) ||
                const DeepCollectionEquality()
                    .equals(other.channelName, channelName)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(channelName) ^
      const DeepCollectionEquality().hash(channelId);

  @JsonKey(ignore: true)
  @override
  _$OrderDeliveryResponseCopyWith<_OrderDeliveryResponse> get copyWith =>
      __$OrderDeliveryResponseCopyWithImpl<_OrderDeliveryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDeliveryResponseToJson(this);
  }
}

abstract class _OrderDeliveryResponse implements OrderDeliveryResponse {
  factory _OrderDeliveryResponse(int flag,
          {String? message,
          String? error,
          int? status,
          @JsonKey(name: 'order_id') int? orderId,
          @JsonKey(name: 'fugu_channel_name') String? channelName,
          @JsonKey(name: 'fugu_channel_id') String? channelId}) =
      _$_OrderDeliveryResponse;

  factory _OrderDeliveryResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderDeliveryResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fugu_channel_name')
  String? get channelName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'fugu_channel_id')
  String? get channelId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDeliveryResponseCopyWith<_OrderDeliveryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

EmergencyContactsResponse _$EmergencyContactsResponseFromJson(
    Map<String, dynamic> json) {
  return _EmergencyContactsResponse.fromJson(json);
}

/// @nodoc
class _$EmergencyContactsResponseTearOff {
  const _$EmergencyContactsResponseTearOff();

  _EmergencyContactsResponse call(
      int flag,
      {String? message,
      String? error,
      String? log,
      @JsonKey(name: 'emergency_contacts')
          List<EmergencyContact>? emergencyContacts}) {
    return _EmergencyContactsResponse(
      flag,
      message: message,
      error: error,
      log: log,
      emergencyContacts: emergencyContacts,
    );
  }

  EmergencyContactsResponse fromJson(Map<String, Object> json) {
    return EmergencyContactsResponse.fromJson(json);
  }
}

/// @nodoc
const $EmergencyContactsResponse = _$EmergencyContactsResponseTearOff();

/// @nodoc
mixin _$EmergencyContactsResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;
  @JsonKey(name: 'emergency_contacts')
  List<EmergencyContact>? get emergencyContacts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmergencyContactsResponseCopyWith<EmergencyContactsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyContactsResponseCopyWith<$Res> {
  factory $EmergencyContactsResponseCopyWith(EmergencyContactsResponse value,
          $Res Function(EmergencyContactsResponse) then) =
      _$EmergencyContactsResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? log,
      @JsonKey(name: 'emergency_contacts')
          List<EmergencyContact>? emergencyContacts});
}

/// @nodoc
class _$EmergencyContactsResponseCopyWithImpl<$Res>
    implements $EmergencyContactsResponseCopyWith<$Res> {
  _$EmergencyContactsResponseCopyWithImpl(this._value, this._then);

  final EmergencyContactsResponse _value;
  // ignore: unused_field
  final $Res Function(EmergencyContactsResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
    Object? emergencyContacts = freezed,
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
      emergencyContacts: emergencyContacts == freezed
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>?,
    ));
  }
}

/// @nodoc
abstract class _$EmergencyContactsResponseCopyWith<$Res>
    implements $EmergencyContactsResponseCopyWith<$Res> {
  factory _$EmergencyContactsResponseCopyWith(_EmergencyContactsResponse value,
          $Res Function(_EmergencyContactsResponse) then) =
      __$EmergencyContactsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? log,
      @JsonKey(name: 'emergency_contacts')
          List<EmergencyContact>? emergencyContacts});
}

/// @nodoc
class __$EmergencyContactsResponseCopyWithImpl<$Res>
    extends _$EmergencyContactsResponseCopyWithImpl<$Res>
    implements _$EmergencyContactsResponseCopyWith<$Res> {
  __$EmergencyContactsResponseCopyWithImpl(_EmergencyContactsResponse _value,
      $Res Function(_EmergencyContactsResponse) _then)
      : super(_value, (v) => _then(v as _EmergencyContactsResponse));

  @override
  _EmergencyContactsResponse get _value =>
      super._value as _EmergencyContactsResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
    Object? emergencyContacts = freezed,
  }) {
    return _then(_EmergencyContactsResponse(
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
      emergencyContacts: emergencyContacts == freezed
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmergencyContactsResponse implements _EmergencyContactsResponse {
  _$_EmergencyContactsResponse(this.flag,
      {this.message,
      this.error,
      this.log,
      @JsonKey(name: 'emergency_contacts') this.emergencyContacts});

  factory _$_EmergencyContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EmergencyContactsResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? log;
  @override
  @JsonKey(name: 'emergency_contacts')
  final List<EmergencyContact>? emergencyContacts;

  @override
  String toString() {
    return 'EmergencyContactsResponse(flag: $flag, message: $message, error: $error, log: $log, emergencyContacts: $emergencyContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmergencyContactsResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.log, log) ||
                const DeepCollectionEquality().equals(other.log, log)) &&
            (identical(other.emergencyContacts, emergencyContacts) ||
                const DeepCollectionEquality()
                    .equals(other.emergencyContacts, emergencyContacts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(emergencyContacts);

  @JsonKey(ignore: true)
  @override
  _$EmergencyContactsResponseCopyWith<_EmergencyContactsResponse>
      get copyWith =>
          __$EmergencyContactsResponseCopyWithImpl<_EmergencyContactsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmergencyContactsResponseToJson(this);
  }
}

abstract class _EmergencyContactsResponse implements EmergencyContactsResponse {
  factory _EmergencyContactsResponse(
          int flag,
          {String? message,
          String? error,
          String? log,
          @JsonKey(name: 'emergency_contacts')
              List<EmergencyContact>? emergencyContacts}) =
      _$_EmergencyContactsResponse;

  factory _EmergencyContactsResponse.fromJson(Map<String, dynamic> json) =
      _$_EmergencyContactsResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'emergency_contacts')
  List<EmergencyContact>? get emergencyContacts =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmergencyContactsResponseCopyWith<_EmergencyContactsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UserRideCount _$UserRideCountFromJson(Map<String, dynamic> json) {
  return _UserRideCount.fromJson(json);
}

/// @nodoc
class _$UserRideCountTearOff {
  const _$UserRideCountTearOff();

  _UserRideCount call(
      {@JsonKey(name: 'completed_rides') int? completedRides,
      @JsonKey(name: 'cancelled_rides') int? cancelledRides,
      @JsonKey(name: 'total_money_spent') int? totalMoneySpent}) {
    return _UserRideCount(
      completedRides: completedRides,
      cancelledRides: cancelledRides,
      totalMoneySpent: totalMoneySpent,
    );
  }

  UserRideCount fromJson(Map<String, Object> json) {
    return UserRideCount.fromJson(json);
  }
}

/// @nodoc
const $UserRideCount = _$UserRideCountTearOff();

/// @nodoc
mixin _$UserRideCount {
  @JsonKey(name: 'completed_rides')
  int? get completedRides => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_rides')
  int? get cancelledRides => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_money_spent')
  int? get totalMoneySpent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRideCountCopyWith<UserRideCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRideCountCopyWith<$Res> {
  factory $UserRideCountCopyWith(
          UserRideCount value, $Res Function(UserRideCount) then) =
      _$UserRideCountCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'completed_rides') int? completedRides,
      @JsonKey(name: 'cancelled_rides') int? cancelledRides,
      @JsonKey(name: 'total_money_spent') int? totalMoneySpent});
}

/// @nodoc
class _$UserRideCountCopyWithImpl<$Res>
    implements $UserRideCountCopyWith<$Res> {
  _$UserRideCountCopyWithImpl(this._value, this._then);

  final UserRideCount _value;
  // ignore: unused_field
  final $Res Function(UserRideCount) _then;

  @override
  $Res call({
    Object? completedRides = freezed,
    Object? cancelledRides = freezed,
    Object? totalMoneySpent = freezed,
  }) {
    return _then(_value.copyWith(
      completedRides: completedRides == freezed
          ? _value.completedRides
          : completedRides // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelledRides: cancelledRides == freezed
          ? _value.cancelledRides
          : cancelledRides // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMoneySpent: totalMoneySpent == freezed
          ? _value.totalMoneySpent
          : totalMoneySpent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$UserRideCountCopyWith<$Res>
    implements $UserRideCountCopyWith<$Res> {
  factory _$UserRideCountCopyWith(
          _UserRideCount value, $Res Function(_UserRideCount) then) =
      __$UserRideCountCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'completed_rides') int? completedRides,
      @JsonKey(name: 'cancelled_rides') int? cancelledRides,
      @JsonKey(name: 'total_money_spent') int? totalMoneySpent});
}

/// @nodoc
class __$UserRideCountCopyWithImpl<$Res>
    extends _$UserRideCountCopyWithImpl<$Res>
    implements _$UserRideCountCopyWith<$Res> {
  __$UserRideCountCopyWithImpl(
      _UserRideCount _value, $Res Function(_UserRideCount) _then)
      : super(_value, (v) => _then(v as _UserRideCount));

  @override
  _UserRideCount get _value => super._value as _UserRideCount;

  @override
  $Res call({
    Object? completedRides = freezed,
    Object? cancelledRides = freezed,
    Object? totalMoneySpent = freezed,
  }) {
    return _then(_UserRideCount(
      completedRides: completedRides == freezed
          ? _value.completedRides
          : completedRides // ignore: cast_nullable_to_non_nullable
              as int?,
      cancelledRides: cancelledRides == freezed
          ? _value.cancelledRides
          : cancelledRides // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMoneySpent: totalMoneySpent == freezed
          ? _value.totalMoneySpent
          : totalMoneySpent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRideCount implements _UserRideCount {
  _$_UserRideCount(
      {@JsonKey(name: 'completed_rides') this.completedRides,
      @JsonKey(name: 'cancelled_rides') this.cancelledRides,
      @JsonKey(name: 'total_money_spent') this.totalMoneySpent});

  factory _$_UserRideCount.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRideCountFromJson(json);

  @override
  @JsonKey(name: 'completed_rides')
  final int? completedRides;
  @override
  @JsonKey(name: 'cancelled_rides')
  final int? cancelledRides;
  @override
  @JsonKey(name: 'total_money_spent')
  final int? totalMoneySpent;

  @override
  String toString() {
    return 'UserRideCount(completedRides: $completedRides, cancelledRides: $cancelledRides, totalMoneySpent: $totalMoneySpent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRideCount &&
            (identical(other.completedRides, completedRides) ||
                const DeepCollectionEquality()
                    .equals(other.completedRides, completedRides)) &&
            (identical(other.cancelledRides, cancelledRides) ||
                const DeepCollectionEquality()
                    .equals(other.cancelledRides, cancelledRides)) &&
            (identical(other.totalMoneySpent, totalMoneySpent) ||
                const DeepCollectionEquality()
                    .equals(other.totalMoneySpent, totalMoneySpent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(completedRides) ^
      const DeepCollectionEquality().hash(cancelledRides) ^
      const DeepCollectionEquality().hash(totalMoneySpent);

  @JsonKey(ignore: true)
  @override
  _$UserRideCountCopyWith<_UserRideCount> get copyWith =>
      __$UserRideCountCopyWithImpl<_UserRideCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRideCountToJson(this);
  }
}

abstract class _UserRideCount implements UserRideCount {
  factory _UserRideCount(
          {@JsonKey(name: 'completed_rides') int? completedRides,
          @JsonKey(name: 'cancelled_rides') int? cancelledRides,
          @JsonKey(name: 'total_money_spent') int? totalMoneySpent}) =
      _$_UserRideCount;

  factory _UserRideCount.fromJson(Map<String, dynamic> json) =
      _$_UserRideCount.fromJson;

  @override
  @JsonKey(name: 'completed_rides')
  int? get completedRides => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'cancelled_rides')
  int? get cancelledRides => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_money_spent')
  int? get totalMoneySpent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRideCountCopyWith<_UserRideCount> get copyWith =>
      throw _privateConstructorUsedError;
}

OffersResponse _$OffersResponseFromJson(Map<String, dynamic> json) {
  return _OffersResponse.fromJson(json);
}

/// @nodoc
class _$OffersResponseTearOff {
  const _$OffersResponseTearOff();

  _OffersResponse call(
      {int? flag,
      String? message,
      String? error,
      bool? promotions,
      bool? airtime,
      bool? transfer,
      bool? donate,
      @JsonKey(name: 'wallet_balance') int? walletBalance}) {
    return _OffersResponse(
      flag: flag,
      message: message,
      error: error,
      promotions: promotions,
      airtime: airtime,
      transfer: transfer,
      donate: donate,
      walletBalance: walletBalance,
    );
  }

  OffersResponse fromJson(Map<String, Object> json) {
    return OffersResponse.fromJson(json);
  }
}

/// @nodoc
const $OffersResponse = _$OffersResponseTearOff();

/// @nodoc
mixin _$OffersResponse {
  int? get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool? get promotions => throw _privateConstructorUsedError;
  bool? get airtime => throw _privateConstructorUsedError;
  bool? get transfer => throw _privateConstructorUsedError;
  bool? get donate => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_balance')
  int? get walletBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffersResponseCopyWith<OffersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersResponseCopyWith<$Res> {
  factory $OffersResponseCopyWith(
          OffersResponse value, $Res Function(OffersResponse) then) =
      _$OffersResponseCopyWithImpl<$Res>;
  $Res call(
      {int? flag,
      String? message,
      String? error,
      bool? promotions,
      bool? airtime,
      bool? transfer,
      bool? donate,
      @JsonKey(name: 'wallet_balance') int? walletBalance});
}

/// @nodoc
class _$OffersResponseCopyWithImpl<$Res>
    implements $OffersResponseCopyWith<$Res> {
  _$OffersResponseCopyWithImpl(this._value, this._then);

  final OffersResponse _value;
  // ignore: unused_field
  final $Res Function(OffersResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? promotions = freezed,
    Object? airtime = freezed,
    Object? transfer = freezed,
    Object? donate = freezed,
    Object? walletBalance = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as bool?,
      airtime: airtime == freezed
          ? _value.airtime
          : airtime // ignore: cast_nullable_to_non_nullable
              as bool?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as bool?,
      donate: donate == freezed
          ? _value.donate
          : donate // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OffersResponseCopyWith<$Res>
    implements $OffersResponseCopyWith<$Res> {
  factory _$OffersResponseCopyWith(
          _OffersResponse value, $Res Function(_OffersResponse) then) =
      __$OffersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? flag,
      String? message,
      String? error,
      bool? promotions,
      bool? airtime,
      bool? transfer,
      bool? donate,
      @JsonKey(name: 'wallet_balance') int? walletBalance});
}

/// @nodoc
class __$OffersResponseCopyWithImpl<$Res>
    extends _$OffersResponseCopyWithImpl<$Res>
    implements _$OffersResponseCopyWith<$Res> {
  __$OffersResponseCopyWithImpl(
      _OffersResponse _value, $Res Function(_OffersResponse) _then)
      : super(_value, (v) => _then(v as _OffersResponse));

  @override
  _OffersResponse get _value => super._value as _OffersResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? promotions = freezed,
    Object? airtime = freezed,
    Object? transfer = freezed,
    Object? donate = freezed,
    Object? walletBalance = freezed,
  }) {
    return _then(_OffersResponse(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as bool?,
      airtime: airtime == freezed
          ? _value.airtime
          : airtime // ignore: cast_nullable_to_non_nullable
              as bool?,
      transfer: transfer == freezed
          ? _value.transfer
          : transfer // ignore: cast_nullable_to_non_nullable
              as bool?,
      donate: donate == freezed
          ? _value.donate
          : donate // ignore: cast_nullable_to_non_nullable
              as bool?,
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OffersResponse implements _OffersResponse {
  _$_OffersResponse(
      {this.flag,
      this.message,
      this.error,
      this.promotions,
      this.airtime,
      this.transfer,
      this.donate,
      @JsonKey(name: 'wallet_balance') this.walletBalance});

  factory _$_OffersResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OffersResponseFromJson(json);

  @override
  final int? flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final bool? promotions;
  @override
  final bool? airtime;
  @override
  final bool? transfer;
  @override
  final bool? donate;
  @override
  @JsonKey(name: 'wallet_balance')
  final int? walletBalance;

  @override
  String toString() {
    return 'OffersResponse(flag: $flag, message: $message, error: $error, promotions: $promotions, airtime: $airtime, transfer: $transfer, donate: $donate, walletBalance: $walletBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OffersResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.promotions, promotions) ||
                const DeepCollectionEquality()
                    .equals(other.promotions, promotions)) &&
            (identical(other.airtime, airtime) ||
                const DeepCollectionEquality()
                    .equals(other.airtime, airtime)) &&
            (identical(other.transfer, transfer) ||
                const DeepCollectionEquality()
                    .equals(other.transfer, transfer)) &&
            (identical(other.donate, donate) ||
                const DeepCollectionEquality().equals(other.donate, donate)) &&
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
      const DeepCollectionEquality().hash(promotions) ^
      const DeepCollectionEquality().hash(airtime) ^
      const DeepCollectionEquality().hash(transfer) ^
      const DeepCollectionEquality().hash(donate) ^
      const DeepCollectionEquality().hash(walletBalance);

  @JsonKey(ignore: true)
  @override
  _$OffersResponseCopyWith<_OffersResponse> get copyWith =>
      __$OffersResponseCopyWithImpl<_OffersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OffersResponseToJson(this);
  }
}

abstract class _OffersResponse implements OffersResponse {
  factory _OffersResponse(
      {int? flag,
      String? message,
      String? error,
      bool? promotions,
      bool? airtime,
      bool? transfer,
      bool? donate,
      @JsonKey(name: 'wallet_balance') int? walletBalance}) = _$_OffersResponse;

  factory _OffersResponse.fromJson(Map<String, dynamic> json) =
      _$_OffersResponse.fromJson;

  @override
  int? get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  bool? get promotions => throw _privateConstructorUsedError;
  @override
  bool? get airtime => throw _privateConstructorUsedError;
  @override
  bool? get transfer => throw _privateConstructorUsedError;
  @override
  bool? get donate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wallet_balance')
  int? get walletBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OffersResponseCopyWith<_OffersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PointTransaction _$PointTransactionFromJson(Map<String, dynamic> json) {
  return _PointTransaction.fromJson(json);
}

/// @nodoc
class _$PointTransactionTearOff {
  const _$PointTransactionTearOff();

  _PointTransaction call({String? type, int? points, DateTime? time}) {
    return _PointTransaction(
      type: type,
      points: points,
      time: time,
    );
  }

  PointTransaction fromJson(Map<String, Object> json) {
    return PointTransaction.fromJson(json);
  }
}

/// @nodoc
const $PointTransaction = _$PointTransactionTearOff();

/// @nodoc
mixin _$PointTransaction {
  String? get type => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointTransactionCopyWith<PointTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointTransactionCopyWith<$Res> {
  factory $PointTransactionCopyWith(
          PointTransaction value, $Res Function(PointTransaction) then) =
      _$PointTransactionCopyWithImpl<$Res>;
  $Res call({String? type, int? points, DateTime? time});
}

/// @nodoc
class _$PointTransactionCopyWithImpl<$Res>
    implements $PointTransactionCopyWith<$Res> {
  _$PointTransactionCopyWithImpl(this._value, this._then);

  final PointTransaction _value;
  // ignore: unused_field
  final $Res Function(PointTransaction) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? points = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$PointTransactionCopyWith<$Res>
    implements $PointTransactionCopyWith<$Res> {
  factory _$PointTransactionCopyWith(
          _PointTransaction value, $Res Function(_PointTransaction) then) =
      __$PointTransactionCopyWithImpl<$Res>;
  @override
  $Res call({String? type, int? points, DateTime? time});
}

/// @nodoc
class __$PointTransactionCopyWithImpl<$Res>
    extends _$PointTransactionCopyWithImpl<$Res>
    implements _$PointTransactionCopyWith<$Res> {
  __$PointTransactionCopyWithImpl(
      _PointTransaction _value, $Res Function(_PointTransaction) _then)
      : super(_value, (v) => _then(v as _PointTransaction));

  @override
  _PointTransaction get _value => super._value as _PointTransaction;

  @override
  $Res call({
    Object? type = freezed,
    Object? points = freezed,
    Object? time = freezed,
  }) {
    return _then(_PointTransaction(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointTransaction implements _PointTransaction {
  _$_PointTransaction({this.type, this.points, this.time});

  factory _$_PointTransaction.fromJson(Map<String, dynamic> json) =>
      _$_$_PointTransactionFromJson(json);

  @override
  final String? type;
  @override
  final int? points;
  @override
  final DateTime? time;

  @override
  String toString() {
    return 'PointTransaction(type: $type, points: $points, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointTransaction &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$PointTransactionCopyWith<_PointTransaction> get copyWith =>
      __$PointTransactionCopyWithImpl<_PointTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointTransactionToJson(this);
  }
}

abstract class _PointTransaction implements PointTransaction {
  factory _PointTransaction({String? type, int? points, DateTime? time}) =
      _$_PointTransaction;

  factory _PointTransaction.fromJson(Map<String, dynamic> json) =
      _$_PointTransaction.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  int? get points => throw _privateConstructorUsedError;
  @override
  DateTime? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointTransactionCopyWith<_PointTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

PointTransactionResponse _$PointTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _PointTransactionResponse.fromJson(json);
}

/// @nodoc
class _$PointTransactionResponseTearOff {
  const _$PointTransactionResponseTearOff();

  _PointTransactionResponse call(int flag,
      {String? error, List<PointTransaction>? message}) {
    return _PointTransactionResponse(
      flag,
      error: error,
      message: message,
    );
  }

  PointTransactionResponse fromJson(Map<String, Object> json) {
    return PointTransactionResponse.fromJson(json);
  }
}

/// @nodoc
const $PointTransactionResponse = _$PointTransactionResponseTearOff();

/// @nodoc
mixin _$PointTransactionResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<PointTransaction>? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointTransactionResponseCopyWith<PointTransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointTransactionResponseCopyWith<$Res> {
  factory $PointTransactionResponseCopyWith(PointTransactionResponse value,
          $Res Function(PointTransactionResponse) then) =
      _$PointTransactionResponseCopyWithImpl<$Res>;
  $Res call({int flag, String? error, List<PointTransaction>? message});
}

/// @nodoc
class _$PointTransactionResponseCopyWithImpl<$Res>
    implements $PointTransactionResponseCopyWith<$Res> {
  _$PointTransactionResponseCopyWithImpl(this._value, this._then);

  final PointTransactionResponse _value;
  // ignore: unused_field
  final $Res Function(PointTransactionResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? message = freezed,
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
              as List<PointTransaction>?,
    ));
  }
}

/// @nodoc
abstract class _$PointTransactionResponseCopyWith<$Res>
    implements $PointTransactionResponseCopyWith<$Res> {
  factory _$PointTransactionResponseCopyWith(_PointTransactionResponse value,
          $Res Function(_PointTransactionResponse) then) =
      __$PointTransactionResponseCopyWithImpl<$Res>;
  @override
  $Res call({int flag, String? error, List<PointTransaction>? message});
}

/// @nodoc
class __$PointTransactionResponseCopyWithImpl<$Res>
    extends _$PointTransactionResponseCopyWithImpl<$Res>
    implements _$PointTransactionResponseCopyWith<$Res> {
  __$PointTransactionResponseCopyWithImpl(_PointTransactionResponse _value,
      $Res Function(_PointTransactionResponse) _then)
      : super(_value, (v) => _then(v as _PointTransactionResponse));

  @override
  _PointTransactionResponse get _value =>
      super._value as _PointTransactionResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? error = freezed,
    Object? message = freezed,
  }) {
    return _then(_PointTransactionResponse(
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
              as List<PointTransaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointTransactionResponse implements _PointTransactionResponse {
  _$_PointTransactionResponse(this.flag, {this.error, this.message});

  factory _$_PointTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PointTransactionResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? error;
  @override
  final List<PointTransaction>? message;

  @override
  String toString() {
    return 'PointTransactionResponse(flag: $flag, error: $error, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointTransactionResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PointTransactionResponseCopyWith<_PointTransactionResponse> get copyWith =>
      __$PointTransactionResponseCopyWithImpl<_PointTransactionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointTransactionResponseToJson(this);
  }
}

abstract class _PointTransactionResponse implements PointTransactionResponse {
  factory _PointTransactionResponse(int flag,
      {String? error,
      List<PointTransaction>? message}) = _$_PointTransactionResponse;

  factory _PointTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_PointTransactionResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<PointTransaction>? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointTransactionResponseCopyWith<_PointTransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AirtimeHistory _$AirtimeHistoryFromJson(Map<String, dynamic> json) {
  return _AirtimeHistory.fromJson(json);
}

/// @nodoc
class _$AirtimeHistoryTearOff {
  const _$AirtimeHistoryTearOff();

  _AirtimeHistory call(
      {int? amount,
      DateTime? date,
      @JsonKey(name: 'voucher_number') String? voucherNumber}) {
    return _AirtimeHistory(
      amount: amount,
      date: date,
      voucherNumber: voucherNumber,
    );
  }

  AirtimeHistory fromJson(Map<String, Object> json) {
    return AirtimeHistory.fromJson(json);
  }
}

/// @nodoc
const $AirtimeHistory = _$AirtimeHistoryTearOff();

/// @nodoc
mixin _$AirtimeHistory {
  int? get amount => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'voucher_number')
  String? get voucherNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirtimeHistoryCopyWith<AirtimeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirtimeHistoryCopyWith<$Res> {
  factory $AirtimeHistoryCopyWith(
          AirtimeHistory value, $Res Function(AirtimeHistory) then) =
      _$AirtimeHistoryCopyWithImpl<$Res>;
  $Res call(
      {int? amount,
      DateTime? date,
      @JsonKey(name: 'voucher_number') String? voucherNumber});
}

/// @nodoc
class _$AirtimeHistoryCopyWithImpl<$Res>
    implements $AirtimeHistoryCopyWith<$Res> {
  _$AirtimeHistoryCopyWithImpl(this._value, this._then);

  final AirtimeHistory _value;
  // ignore: unused_field
  final $Res Function(AirtimeHistory) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? date = freezed,
    Object? voucherNumber = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      voucherNumber: voucherNumber == freezed
          ? _value.voucherNumber
          : voucherNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AirtimeHistoryCopyWith<$Res>
    implements $AirtimeHistoryCopyWith<$Res> {
  factory _$AirtimeHistoryCopyWith(
          _AirtimeHistory value, $Res Function(_AirtimeHistory) then) =
      __$AirtimeHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? amount,
      DateTime? date,
      @JsonKey(name: 'voucher_number') String? voucherNumber});
}

/// @nodoc
class __$AirtimeHistoryCopyWithImpl<$Res>
    extends _$AirtimeHistoryCopyWithImpl<$Res>
    implements _$AirtimeHistoryCopyWith<$Res> {
  __$AirtimeHistoryCopyWithImpl(
      _AirtimeHistory _value, $Res Function(_AirtimeHistory) _then)
      : super(_value, (v) => _then(v as _AirtimeHistory));

  @override
  _AirtimeHistory get _value => super._value as _AirtimeHistory;

  @override
  $Res call({
    Object? amount = freezed,
    Object? date = freezed,
    Object? voucherNumber = freezed,
  }) {
    return _then(_AirtimeHistory(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      voucherNumber: voucherNumber == freezed
          ? _value.voucherNumber
          : voucherNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirtimeHistory implements _AirtimeHistory {
  _$_AirtimeHistory(
      {this.amount,
      this.date,
      @JsonKey(name: 'voucher_number') this.voucherNumber});

  factory _$_AirtimeHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_AirtimeHistoryFromJson(json);

  @override
  final int? amount;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: 'voucher_number')
  final String? voucherNumber;

  @override
  String toString() {
    return 'AirtimeHistory(amount: $amount, date: $date, voucherNumber: $voucherNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirtimeHistory &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.voucherNumber, voucherNumber) ||
                const DeepCollectionEquality()
                    .equals(other.voucherNumber, voucherNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(voucherNumber);

  @JsonKey(ignore: true)
  @override
  _$AirtimeHistoryCopyWith<_AirtimeHistory> get copyWith =>
      __$AirtimeHistoryCopyWithImpl<_AirtimeHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AirtimeHistoryToJson(this);
  }
}

abstract class _AirtimeHistory implements AirtimeHistory {
  factory _AirtimeHistory(
          {int? amount,
          DateTime? date,
          @JsonKey(name: 'voucher_number') String? voucherNumber}) =
      _$_AirtimeHistory;

  factory _AirtimeHistory.fromJson(Map<String, dynamic> json) =
      _$_AirtimeHistory.fromJson;

  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  DateTime? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'voucher_number')
  String? get voucherNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AirtimeHistoryCopyWith<_AirtimeHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return _Promotion.fromJson(json);
}

/// @nodoc
class _$PromotionTearOff {
  const _$PromotionTearOff();

  _Promotion call(
      {String? title,
      int? city,
      @JsonKey(name: 'promo_id') int? promoId,
      @JsonKey(name: 'promo_type') int? promoType,
      @JsonKey(name: 'start_from') DateTime? startFrom,
      @JsonKey(name: 'end_on') DateTime? endOn,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'per_day_limit') int? perDayLimit,
      @JsonKey(name: 'validity_text') String? validityText,
      @JsonKey(name: 'promo_text') String? promoText}) {
    return _Promotion(
      title: title,
      city: city,
      promoId: promoId,
      promoType: promoType,
      startFrom: startFrom,
      endOn: endOn,
      allowedVehicles: allowedVehicles,
      perDayLimit: perDayLimit,
      validityText: validityText,
      promoText: promoText,
    );
  }

  Promotion fromJson(Map<String, Object> json) {
    return Promotion.fromJson(json);
  }
}

/// @nodoc
const $Promotion = _$PromotionTearOff();

/// @nodoc
mixin _$Promotion {
  String? get title => throw _privateConstructorUsedError;
  int? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_id')
  int? get promoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_type')
  int? get promoType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_from')
  DateTime? get startFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_on')
  DateTime? get endOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_vehicles')
  List<int>? get allowedVehicles => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_day_limit')
  int? get perDayLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'validity_text')
  String? get validityText => throw _privateConstructorUsedError;
  @JsonKey(name: 'promo_text')
  String? get promoText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      int? city,
      @JsonKey(name: 'promo_id') int? promoId,
      @JsonKey(name: 'promo_type') int? promoType,
      @JsonKey(name: 'start_from') DateTime? startFrom,
      @JsonKey(name: 'end_on') DateTime? endOn,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'per_day_limit') int? perDayLimit,
      @JsonKey(name: 'validity_text') String? validityText,
      @JsonKey(name: 'promo_text') String? promoText});
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res> implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  final Promotion _value;
  // ignore: unused_field
  final $Res Function(Promotion) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? city = freezed,
    Object? promoId = freezed,
    Object? promoType = freezed,
    Object? startFrom = freezed,
    Object? endOn = freezed,
    Object? allowedVehicles = freezed,
    Object? perDayLimit = freezed,
    Object? validityText = freezed,
    Object? promoText = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
      promoType: promoType == freezed
          ? _value.promoType
          : promoType // ignore: cast_nullable_to_non_nullable
              as int?,
      startFrom: startFrom == freezed
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endOn: endOn == freezed
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedVehicles: allowedVehicles == freezed
          ? _value.allowedVehicles
          : allowedVehicles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      perDayLimit: perDayLimit == freezed
          ? _value.perDayLimit
          : perDayLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      validityText: validityText == freezed
          ? _value.validityText
          : validityText // ignore: cast_nullable_to_non_nullable
              as String?,
      promoText: promoText == freezed
          ? _value.promoText
          : promoText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory _$PromotionCopyWith(
          _Promotion value, $Res Function(_Promotion) then) =
      __$PromotionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      int? city,
      @JsonKey(name: 'promo_id') int? promoId,
      @JsonKey(name: 'promo_type') int? promoType,
      @JsonKey(name: 'start_from') DateTime? startFrom,
      @JsonKey(name: 'end_on') DateTime? endOn,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'per_day_limit') int? perDayLimit,
      @JsonKey(name: 'validity_text') String? validityText,
      @JsonKey(name: 'promo_text') String? promoText});
}

/// @nodoc
class __$PromotionCopyWithImpl<$Res> extends _$PromotionCopyWithImpl<$Res>
    implements _$PromotionCopyWith<$Res> {
  __$PromotionCopyWithImpl(_Promotion _value, $Res Function(_Promotion) _then)
      : super(_value, (v) => _then(v as _Promotion));

  @override
  _Promotion get _value => super._value as _Promotion;

  @override
  $Res call({
    Object? title = freezed,
    Object? city = freezed,
    Object? promoId = freezed,
    Object? promoType = freezed,
    Object? startFrom = freezed,
    Object? endOn = freezed,
    Object? allowedVehicles = freezed,
    Object? perDayLimit = freezed,
    Object? validityText = freezed,
    Object? promoText = freezed,
  }) {
    return _then(_Promotion(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as int?,
      promoId: promoId == freezed
          ? _value.promoId
          : promoId // ignore: cast_nullable_to_non_nullable
              as int?,
      promoType: promoType == freezed
          ? _value.promoType
          : promoType // ignore: cast_nullable_to_non_nullable
              as int?,
      startFrom: startFrom == freezed
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endOn: endOn == freezed
          ? _value.endOn
          : endOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      allowedVehicles: allowedVehicles == freezed
          ? _value.allowedVehicles
          : allowedVehicles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      perDayLimit: perDayLimit == freezed
          ? _value.perDayLimit
          : perDayLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      validityText: validityText == freezed
          ? _value.validityText
          : validityText // ignore: cast_nullable_to_non_nullable
              as String?,
      promoText: promoText == freezed
          ? _value.promoText
          : promoText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Promotion implements _Promotion {
  _$_Promotion(
      {this.title,
      this.city,
      @JsonKey(name: 'promo_id') this.promoId,
      @JsonKey(name: 'promo_type') this.promoType,
      @JsonKey(name: 'start_from') this.startFrom,
      @JsonKey(name: 'end_on') this.endOn,
      @JsonKey(name: 'allowed_vehicles') this.allowedVehicles,
      @JsonKey(name: 'per_day_limit') this.perDayLimit,
      @JsonKey(name: 'validity_text') this.validityText,
      @JsonKey(name: 'promo_text') this.promoText});

  factory _$_Promotion.fromJson(Map<String, dynamic> json) =>
      _$_$_PromotionFromJson(json);

  @override
  final String? title;
  @override
  final int? city;
  @override
  @JsonKey(name: 'promo_id')
  final int? promoId;
  @override
  @JsonKey(name: 'promo_type')
  final int? promoType;
  @override
  @JsonKey(name: 'start_from')
  final DateTime? startFrom;
  @override
  @JsonKey(name: 'end_on')
  final DateTime? endOn;
  @override
  @JsonKey(name: 'allowed_vehicles')
  final List<int>? allowedVehicles;
  @override
  @JsonKey(name: 'per_day_limit')
  final int? perDayLimit;
  @override
  @JsonKey(name: 'validity_text')
  final String? validityText;
  @override
  @JsonKey(name: 'promo_text')
  final String? promoText;

  @override
  String toString() {
    return 'Promotion(title: $title, city: $city, promoId: $promoId, promoType: $promoType, startFrom: $startFrom, endOn: $endOn, allowedVehicles: $allowedVehicles, perDayLimit: $perDayLimit, validityText: $validityText, promoText: $promoText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Promotion &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.promoId, promoId) ||
                const DeepCollectionEquality()
                    .equals(other.promoId, promoId)) &&
            (identical(other.promoType, promoType) ||
                const DeepCollectionEquality()
                    .equals(other.promoType, promoType)) &&
            (identical(other.startFrom, startFrom) ||
                const DeepCollectionEquality()
                    .equals(other.startFrom, startFrom)) &&
            (identical(other.endOn, endOn) ||
                const DeepCollectionEquality().equals(other.endOn, endOn)) &&
            (identical(other.allowedVehicles, allowedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.allowedVehicles, allowedVehicles)) &&
            (identical(other.perDayLimit, perDayLimit) ||
                const DeepCollectionEquality()
                    .equals(other.perDayLimit, perDayLimit)) &&
            (identical(other.validityText, validityText) ||
                const DeepCollectionEquality()
                    .equals(other.validityText, validityText)) &&
            (identical(other.promoText, promoText) ||
                const DeepCollectionEquality()
                    .equals(other.promoText, promoText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(promoId) ^
      const DeepCollectionEquality().hash(promoType) ^
      const DeepCollectionEquality().hash(startFrom) ^
      const DeepCollectionEquality().hash(endOn) ^
      const DeepCollectionEquality().hash(allowedVehicles) ^
      const DeepCollectionEquality().hash(perDayLimit) ^
      const DeepCollectionEquality().hash(validityText) ^
      const DeepCollectionEquality().hash(promoText);

  @JsonKey(ignore: true)
  @override
  _$PromotionCopyWith<_Promotion> get copyWith =>
      __$PromotionCopyWithImpl<_Promotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromotionToJson(this);
  }
}

abstract class _Promotion implements Promotion {
  factory _Promotion(
      {String? title,
      int? city,
      @JsonKey(name: 'promo_id') int? promoId,
      @JsonKey(name: 'promo_type') int? promoType,
      @JsonKey(name: 'start_from') DateTime? startFrom,
      @JsonKey(name: 'end_on') DateTime? endOn,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'per_day_limit') int? perDayLimit,
      @JsonKey(name: 'validity_text') String? validityText,
      @JsonKey(name: 'promo_text') String? promoText}) = _$_Promotion;

  factory _Promotion.fromJson(Map<String, dynamic> json) =
      _$_Promotion.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  int? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'promo_id')
  int? get promoId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'promo_type')
  int? get promoType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'start_from')
  DateTime? get startFrom => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'end_on')
  DateTime? get endOn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'allowed_vehicles')
  List<int>? get allowedVehicles => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'per_day_limit')
  int? get perDayLimit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'validity_text')
  String? get validityText => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'promo_text')
  String? get promoText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromotionCopyWith<_Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
class _$CouponTearOff {
  const _$CouponTearOff();

  _Coupon call(
      {String? title,
      String? subtitle,
      String? description,
      int? type,
      int? discount,
      int? maximum,
      int? status,
      @JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'account_id') int? accountId,
      @JsonKey(name: 'coupon_type') int? couponType,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate}) {
    return _Coupon(
      title: title,
      subtitle: subtitle,
      description: description,
      type: type,
      discount: discount,
      maximum: maximum,
      status: status,
      couponId: couponId,
      accountId: accountId,
      couponType: couponType,
      allowedVehicles: allowedVehicles,
      expiryDate: expiryDate,
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
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get maximum => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_id')
  int? get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_id')
  int? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_type')
  int? get couponType => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowed_vehicles')
  List<int>? get allowedVehicles => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  DateTime? get expiryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? subtitle,
      String? description,
      int? type,
      int? discount,
      int? maximum,
      int? status,
      @JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'account_id') int? accountId,
      @JsonKey(name: 'coupon_type') int? couponType,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res> implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  final Coupon _value;
  // ignore: unused_field
  final $Res Function(Coupon) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? maximum = freezed,
    Object? status = freezed,
    Object? couponId = freezed,
    Object? accountId = freezed,
    Object? couponType = freezed,
    Object? allowedVehicles = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      couponId: couponId == freezed
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      couponType: couponType == freezed
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedVehicles: allowedVehicles == freezed
          ? _value.allowedVehicles
          : allowedVehicles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$CouponCopyWith(_Coupon value, $Res Function(_Coupon) then) =
      __$CouponCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? subtitle,
      String? description,
      int? type,
      int? discount,
      int? maximum,
      int? status,
      @JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'account_id') int? accountId,
      @JsonKey(name: 'coupon_type') int? couponType,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate});
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
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? maximum = freezed,
    Object? status = freezed,
    Object? couponId = freezed,
    Object? accountId = freezed,
    Object? couponType = freezed,
    Object? allowedVehicles = freezed,
    Object? expiryDate = freezed,
  }) {
    return _then(_Coupon(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: maximum == freezed
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      couponId: couponId == freezed
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      couponType: couponType == freezed
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedVehicles: allowedVehicles == freezed
          ? _value.allowedVehicles
          : allowedVehicles // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      expiryDate: expiryDate == freezed
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  _$_Coupon(
      {this.title,
      this.subtitle,
      this.description,
      this.type,
      this.discount,
      this.maximum,
      this.status,
      @JsonKey(name: 'coupon_id') this.couponId,
      @JsonKey(name: 'account_id') this.accountId,
      @JsonKey(name: 'coupon_type') this.couponType,
      @JsonKey(name: 'allowed_vehicles') this.allowedVehicles,
      @JsonKey(name: 'expiry_date') this.expiryDate});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$_$_CouponFromJson(json);

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? description;
  @override
  final int? type;
  @override
  final int? discount;
  @override
  final int? maximum;
  @override
  final int? status;
  @override
  @JsonKey(name: 'coupon_id')
  final int? couponId;
  @override
  @JsonKey(name: 'account_id')
  final int? accountId;
  @override
  @JsonKey(name: 'coupon_type')
  final int? couponType;
  @override
  @JsonKey(name: 'allowed_vehicles')
  final List<int>? allowedVehicles;
  @override
  @JsonKey(name: 'expiry_date')
  final DateTime? expiryDate;

  @override
  String toString() {
    return 'Coupon(title: $title, subtitle: $subtitle, description: $description, type: $type, discount: $discount, maximum: $maximum, status: $status, couponId: $couponId, accountId: $accountId, couponType: $couponType, allowedVehicles: $allowedVehicles, expiryDate: $expiryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coupon &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.subtitle, subtitle) ||
                const DeepCollectionEquality()
                    .equals(other.subtitle, subtitle)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.maximum, maximum) ||
                const DeepCollectionEquality()
                    .equals(other.maximum, maximum)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.couponId, couponId) ||
                const DeepCollectionEquality()
                    .equals(other.couponId, couponId)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.couponType, couponType) ||
                const DeepCollectionEquality()
                    .equals(other.couponType, couponType)) &&
            (identical(other.allowedVehicles, allowedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.allowedVehicles, allowedVehicles)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(maximum) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(couponId) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(couponType) ^
      const DeepCollectionEquality().hash(allowedVehicles) ^
      const DeepCollectionEquality().hash(expiryDate);

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
  factory _Coupon(
      {String? title,
      String? subtitle,
      String? description,
      int? type,
      int? discount,
      int? maximum,
      int? status,
      @JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'account_id') int? accountId,
      @JsonKey(name: 'coupon_type') int? couponType,
      @JsonKey(name: 'allowed_vehicles') List<int>? allowedVehicles,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get subtitle => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get type => throw _privateConstructorUsedError;
  @override
  int? get discount => throw _privateConstructorUsedError;
  @override
  int? get maximum => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'coupon_id')
  int? get couponId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'account_id')
  int? get accountId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'coupon_type')
  int? get couponType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'allowed_vehicles')
  List<int>? get allowedVehicles => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expiry_date')
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CouponCopyWith<_Coupon> get copyWith => throw _privateConstructorUsedError;
}

PromotionsResponse _$PromotionsResponseFromJson(Map<String, dynamic> json) {
  return _PromotionsResponse.fromJson(json);
}

/// @nodoc
class _$PromotionsResponseTearOff {
  const _$PromotionsResponseTearOff();

  _PromotionsResponse call(int flag,
      {String? message,
      String? error,
      List<Coupon>? coupons,
      List<Promotion>? promotions}) {
    return _PromotionsResponse(
      flag,
      message: message,
      error: error,
      coupons: coupons,
      promotions: promotions,
    );
  }

  PromotionsResponse fromJson(Map<String, Object> json) {
    return PromotionsResponse.fromJson(json);
  }
}

/// @nodoc
const $PromotionsResponse = _$PromotionsResponseTearOff();

/// @nodoc
mixin _$PromotionsResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Coupon>? get coupons => throw _privateConstructorUsedError;
  List<Promotion>? get promotions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionsResponseCopyWith<PromotionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsResponseCopyWith<$Res> {
  factory $PromotionsResponseCopyWith(
          PromotionsResponse value, $Res Function(PromotionsResponse) then) =
      _$PromotionsResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      List<Coupon>? coupons,
      List<Promotion>? promotions});
}

/// @nodoc
class _$PromotionsResponseCopyWithImpl<$Res>
    implements $PromotionsResponseCopyWith<$Res> {
  _$PromotionsResponseCopyWithImpl(this._value, this._then);

  final PromotionsResponse _value;
  // ignore: unused_field
  final $Res Function(PromotionsResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? coupons = freezed,
    Object? promotions = freezed,
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
      coupons: coupons == freezed
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>?,
    ));
  }
}

/// @nodoc
abstract class _$PromotionsResponseCopyWith<$Res>
    implements $PromotionsResponseCopyWith<$Res> {
  factory _$PromotionsResponseCopyWith(
          _PromotionsResponse value, $Res Function(_PromotionsResponse) then) =
      __$PromotionsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      List<Coupon>? coupons,
      List<Promotion>? promotions});
}

/// @nodoc
class __$PromotionsResponseCopyWithImpl<$Res>
    extends _$PromotionsResponseCopyWithImpl<$Res>
    implements _$PromotionsResponseCopyWith<$Res> {
  __$PromotionsResponseCopyWithImpl(
      _PromotionsResponse _value, $Res Function(_PromotionsResponse) _then)
      : super(_value, (v) => _then(v as _PromotionsResponse));

  @override
  _PromotionsResponse get _value => super._value as _PromotionsResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? coupons = freezed,
    Object? promotions = freezed,
  }) {
    return _then(_PromotionsResponse(
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
      coupons: coupons == freezed
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
      promotions: promotions == freezed
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionsResponse implements _PromotionsResponse {
  _$_PromotionsResponse(this.flag,
      {this.message, this.error, this.coupons, this.promotions});

  factory _$_PromotionsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PromotionsResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final List<Coupon>? coupons;
  @override
  final List<Promotion>? promotions;

  @override
  String toString() {
    return 'PromotionsResponse(flag: $flag, message: $message, error: $error, coupons: $coupons, promotions: $promotions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromotionsResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.coupons, coupons) ||
                const DeepCollectionEquality()
                    .equals(other.coupons, coupons)) &&
            (identical(other.promotions, promotions) ||
                const DeepCollectionEquality()
                    .equals(other.promotions, promotions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(coupons) ^
      const DeepCollectionEquality().hash(promotions);

  @JsonKey(ignore: true)
  @override
  _$PromotionsResponseCopyWith<_PromotionsResponse> get copyWith =>
      __$PromotionsResponseCopyWithImpl<_PromotionsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromotionsResponseToJson(this);
  }
}

abstract class _PromotionsResponse implements PromotionsResponse {
  factory _PromotionsResponse(int flag,
      {String? message,
      String? error,
      List<Coupon>? coupons,
      List<Promotion>? promotions}) = _$_PromotionsResponse;

  factory _PromotionsResponse.fromJson(Map<String, dynamic> json) =
      _$_PromotionsResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  List<Coupon>? get coupons => throw _privateConstructorUsedError;
  @override
  List<Promotion>? get promotions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PromotionsResponseCopyWith<_PromotionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AirTimeResponse _$AirTimeResponseFromJson(Map<String, dynamic> json) {
  return _AirTimeResponse.fromJson(json);
}

/// @nodoc
class _$AirTimeResponseTearOff {
  const _$AirTimeResponseTearOff();

  _AirTimeResponse call(int flag,
      {String? message,
      String? error,
      String? log,
      @JsonKey(name: 'voucher_number') String? voucherNumber}) {
    return _AirTimeResponse(
      flag,
      message: message,
      error: error,
      log: log,
      voucherNumber: voucherNumber,
    );
  }

  AirTimeResponse fromJson(Map<String, Object> json) {
    return AirTimeResponse.fromJson(json);
  }
}

/// @nodoc
const $AirTimeResponse = _$AirTimeResponseTearOff();

/// @nodoc
mixin _$AirTimeResponse {
  int get flag => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;
  @JsonKey(name: 'voucher_number')
  String? get voucherNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirTimeResponseCopyWith<AirTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirTimeResponseCopyWith<$Res> {
  factory $AirTimeResponseCopyWith(
          AirTimeResponse value, $Res Function(AirTimeResponse) then) =
      _$AirTimeResponseCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? log,
      @JsonKey(name: 'voucher_number') String? voucherNumber});
}

/// @nodoc
class _$AirTimeResponseCopyWithImpl<$Res>
    implements $AirTimeResponseCopyWith<$Res> {
  _$AirTimeResponseCopyWithImpl(this._value, this._then);

  final AirTimeResponse _value;
  // ignore: unused_field
  final $Res Function(AirTimeResponse) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
    Object? voucherNumber = freezed,
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
      voucherNumber: voucherNumber == freezed
          ? _value.voucherNumber
          : voucherNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AirTimeResponseCopyWith<$Res>
    implements $AirTimeResponseCopyWith<$Res> {
  factory _$AirTimeResponseCopyWith(
          _AirTimeResponse value, $Res Function(_AirTimeResponse) then) =
      __$AirTimeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int flag,
      String? message,
      String? error,
      String? log,
      @JsonKey(name: 'voucher_number') String? voucherNumber});
}

/// @nodoc
class __$AirTimeResponseCopyWithImpl<$Res>
    extends _$AirTimeResponseCopyWithImpl<$Res>
    implements _$AirTimeResponseCopyWith<$Res> {
  __$AirTimeResponseCopyWithImpl(
      _AirTimeResponse _value, $Res Function(_AirTimeResponse) _then)
      : super(_value, (v) => _then(v as _AirTimeResponse));

  @override
  _AirTimeResponse get _value => super._value as _AirTimeResponse;

  @override
  $Res call({
    Object? flag = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
    Object? voucherNumber = freezed,
  }) {
    return _then(_AirTimeResponse(
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
      voucherNumber: voucherNumber == freezed
          ? _value.voucherNumber
          : voucherNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AirTimeResponse implements _AirTimeResponse {
  _$_AirTimeResponse(this.flag,
      {this.message,
      this.error,
      this.log,
      @JsonKey(name: 'voucher_number') this.voucherNumber});

  factory _$_AirTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AirTimeResponseFromJson(json);

  @override
  final int flag;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? log;
  @override
  @JsonKey(name: 'voucher_number')
  final String? voucherNumber;

  @override
  String toString() {
    return 'AirTimeResponse(flag: $flag, message: $message, error: $error, log: $log, voucherNumber: $voucherNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AirTimeResponse &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.log, log) ||
                const DeepCollectionEquality().equals(other.log, log)) &&
            (identical(other.voucherNumber, voucherNumber) ||
                const DeepCollectionEquality()
                    .equals(other.voucherNumber, voucherNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(log) ^
      const DeepCollectionEquality().hash(voucherNumber);

  @JsonKey(ignore: true)
  @override
  _$AirTimeResponseCopyWith<_AirTimeResponse> get copyWith =>
      __$AirTimeResponseCopyWithImpl<_AirTimeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AirTimeResponseToJson(this);
  }
}

abstract class _AirTimeResponse implements AirTimeResponse {
  factory _AirTimeResponse(int flag,
          {String? message,
          String? error,
          String? log,
          @JsonKey(name: 'voucher_number') String? voucherNumber}) =
      _$_AirTimeResponse;

  factory _AirTimeResponse.fromJson(Map<String, dynamic> json) =
      _$_AirTimeResponse.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'voucher_number')
  String? get voucherNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AirTimeResponseCopyWith<_AirTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

LegalResponse _$LegalResponseFromJson(Map<String, dynamic> json) {
  return _LegalResponse.fromJson(json);
}

/// @nodoc
class _$LegalResponseTearOff {
  const _$LegalResponseTearOff();

  _LegalResponse call({String? data}) {
    return _LegalResponse(
      data: data,
    );
  }

  LegalResponse fromJson(Map<String, Object> json) {
    return LegalResponse.fromJson(json);
  }
}

/// @nodoc
const $LegalResponse = _$LegalResponseTearOff();

/// @nodoc
mixin _$LegalResponse {
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LegalResponseCopyWith<LegalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LegalResponseCopyWith<$Res> {
  factory $LegalResponseCopyWith(
          LegalResponse value, $Res Function(LegalResponse) then) =
      _$LegalResponseCopyWithImpl<$Res>;
  $Res call({String? data});
}

/// @nodoc
class _$LegalResponseCopyWithImpl<$Res>
    implements $LegalResponseCopyWith<$Res> {
  _$LegalResponseCopyWithImpl(this._value, this._then);

  final LegalResponse _value;
  // ignore: unused_field
  final $Res Function(LegalResponse) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LegalResponseCopyWith<$Res>
    implements $LegalResponseCopyWith<$Res> {
  factory _$LegalResponseCopyWith(
          _LegalResponse value, $Res Function(_LegalResponse) then) =
      __$LegalResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? data});
}

/// @nodoc
class __$LegalResponseCopyWithImpl<$Res>
    extends _$LegalResponseCopyWithImpl<$Res>
    implements _$LegalResponseCopyWith<$Res> {
  __$LegalResponseCopyWithImpl(
      _LegalResponse _value, $Res Function(_LegalResponse) _then)
      : super(_value, (v) => _then(v as _LegalResponse));

  @override
  _LegalResponse get _value => super._value as _LegalResponse;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LegalResponse(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LegalResponse implements _LegalResponse {
  _$_LegalResponse({this.data});

  factory _$_LegalResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LegalResponseFromJson(json);

  @override
  final String? data;

  @override
  String toString() {
    return 'LegalResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LegalResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LegalResponseCopyWith<_LegalResponse> get copyWith =>
      __$LegalResponseCopyWithImpl<_LegalResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LegalResponseToJson(this);
  }
}

abstract class _LegalResponse implements LegalResponse {
  factory _LegalResponse({String? data}) = _$_LegalResponse;

  factory _LegalResponse.fromJson(Map<String, dynamic> json) =
      _$_LegalResponse.fromJson;

  @override
  String? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LegalResponseCopyWith<_LegalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ListResponse<T> _$ListResponseFromJson<T>(Map<String, dynamic> json) {
  return _RideListResponse<T>.fromJson(json);
}

/// @nodoc
class _$ListResponseTearOff {
  const _$ListResponseTearOff();

  _RideListResponse<T> call<T>(int flag,
      {@DataConverter() List<T>? data,
      String? message,
      String? error,
      String? log}) {
    return _RideListResponse<T>(
      flag,
      data: data,
      message: message,
      error: error,
      log: log,
    );
  }

  ListResponse<T> fromJson<T>(Map<String, Object> json) {
    return ListResponse<T>.fromJson(json);
  }
}

/// @nodoc
const $ListResponse = _$ListResponseTearOff();

/// @nodoc
mixin _$ListResponse<T> {
  int get flag => throw _privateConstructorUsedError;
  @DataConverter()
  List<T>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get log => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListResponseCopyWith<T, ListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponseCopyWith<T, $Res> {
  factory $ListResponseCopyWith(
          ListResponse<T> value, $Res Function(ListResponse<T>) then) =
      _$ListResponseCopyWithImpl<T, $Res>;
  $Res call(
      {int flag,
      @DataConverter() List<T>? data,
      String? message,
      String? error,
      String? log});
}

/// @nodoc
class _$ListResponseCopyWithImpl<T, $Res>
    implements $ListResponseCopyWith<T, $Res> {
  _$ListResponseCopyWithImpl(this._value, this._then);

  final ListResponse<T> _value;
  // ignore: unused_field
  final $Res Function(ListResponse<T>) _then;

  @override
  $Res call({
    Object? flag = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
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
abstract class _$RideListResponseCopyWith<T, $Res>
    implements $ListResponseCopyWith<T, $Res> {
  factory _$RideListResponseCopyWith(_RideListResponse<T> value,
          $Res Function(_RideListResponse<T>) then) =
      __$RideListResponseCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {int flag,
      @DataConverter() List<T>? data,
      String? message,
      String? error,
      String? log});
}

/// @nodoc
class __$RideListResponseCopyWithImpl<T, $Res>
    extends _$ListResponseCopyWithImpl<T, $Res>
    implements _$RideListResponseCopyWith<T, $Res> {
  __$RideListResponseCopyWithImpl(
      _RideListResponse<T> _value, $Res Function(_RideListResponse<T>) _then)
      : super(_value, (v) => _then(v as _RideListResponse<T>));

  @override
  _RideListResponse<T> get _value => super._value as _RideListResponse<T>;

  @override
  $Res call({
    Object? flag = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
    Object? log = freezed,
  }) {
    return _then(_RideListResponse<T>(
      flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
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
class _$_RideListResponse<T> implements _RideListResponse<T> {
  _$_RideListResponse(this.flag,
      {@DataConverter() this.data, this.message, this.error, this.log});

  factory _$_RideListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RideListResponseFromJson(json);

  @override
  final int flag;
  @override
  @DataConverter()
  final List<T>? data;
  @override
  final String? message;
  @override
  final String? error;
  @override
  final String? log;

  @override
  String toString() {
    return 'ListResponse<$T>(flag: $flag, data: $data, message: $message, error: $error, log: $log)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RideListResponse<T> &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
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
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(log);

  @JsonKey(ignore: true)
  @override
  _$RideListResponseCopyWith<T, _RideListResponse<T>> get copyWith =>
      __$RideListResponseCopyWithImpl<T, _RideListResponse<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RideListResponseToJson(this);
  }
}

abstract class _RideListResponse<T> implements ListResponse<T> {
  factory _RideListResponse(int flag,
      {@DataConverter() List<T>? data,
      String? message,
      String? error,
      String? log}) = _$_RideListResponse<T>;

  factory _RideListResponse.fromJson(Map<String, dynamic> json) =
      _$_RideListResponse<T>.fromJson;

  @override
  int get flag => throw _privateConstructorUsedError;
  @override
  @DataConverter()
  List<T>? get data => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  String? get log => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RideListResponseCopyWith<T, _RideListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
