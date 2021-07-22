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
