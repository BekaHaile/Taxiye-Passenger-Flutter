/*
  Includes interfaces for repository api requests.
*/
import 'package:image_picker/image_picker.dart';
import 'dart:io';

abstract class IAuthRepository {
  // Todo: Add Auth request class signitures (interfaces) here.
  // Future<User> login(String email, String password);

}

abstract class IHomeRepository {
  // Todo: Add Home request class signitures (interfaces) here.
}

abstract class ICommonRepository {
  // Todo: Add common request class signitures (interfaces) here.
}

abstract class IFileRepository {
  // Todo: Add file/media requests here.
  Future<File> getMedia(ImageSource imageSource, String mediaType);
  Future<File?> getCroppedImage(File imageFile);
}

abstract class IProfileRepository {
  // Todo: Add profile request class signitures (interfaces) here.
}

abstract class IPaymentRepository {
  // Todo: Add profile request class signitures (interfaces) here.
}
