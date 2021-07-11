import 'package:get/route_manager.dart';
import 'package:taxiye_passenger/ui/pages/auth/login_page.dart';
import 'package:taxiye_passenger/ui/pages/auth/signup_page.dart';
import 'package:taxiye_passenger/ui/pages/introduction/initial_page.dart';
import 'package:taxiye_passenger/ui/pages/profile/profile_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    // Introduction pages
    GetPage(
      name: Routes.initial,
      page: () => const InitialPage(),
    ),

    // Auth Pages
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      // binding: AuthBinding(),
    ),

    GetPage(
      name: Routes.signup,
      page: () => const SignUpPage(),
    ),

    // Profile Pages
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
