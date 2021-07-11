import 'package:get/get.dart';
import 'package:taxiye_passenger/core/adapters/repository_adapter.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';

/*
  Handles any business logic and data binding related to authentication
  any auth api requests are made here
*/
class AuthController extends GetxService {
  final IAuthRepository repository;
  AuthController({required this.repository});

  // holds request status
  final status = Status.success.obs;
  final _email = ''.obs;
  get email => _email.value.trim();
  set email(value) => _email.value = value;

  final _password = ''.obs;
  get password => _password.value.trim();
  set password(value) => _password.value = value;

  final _fullname = ''.obs;
  get fullname => _fullname.value.trim();
  set fullname(value) => _fullname.value = value;

  @override
  void onInit() async {
    // Todo: initialize values and get any auth values here.
    super.onInit();
  }

  void login() {
    // Todo: login user logic
    // repository.login(email, password);
  }

  void signup() async {
    // Todo: sign up user logic
    // repository.signup(signupPayload)
  }

  void logout() {
    // Todo: logout user and clear any saved values
  }
}
