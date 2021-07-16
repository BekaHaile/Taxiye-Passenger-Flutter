import 'package:get/route_manager.dart';
import 'package:taxiye_passenger/ui/bindings/auth_binding.dart';
import 'package:taxiye_passenger/ui/bindings/home_binding.dart';
import 'package:taxiye_passenger/ui/pages/auth/auth_page.dart';
import 'package:taxiye_passenger/ui/pages/auth/verify_page.dart';
import 'package:taxiye_passenger/ui/pages/home/home_page.dart';
import 'package:taxiye_passenger/ui/pages/introduction/introduction_page.dart';
import 'package:taxiye_passenger/ui/pages/introduction/language_page.dart';
import 'package:taxiye_passenger/ui/pages/introduction/splash_page.dart';
import 'package:taxiye_passenger/ui/pages/profile/profile_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    // Introduction pages
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
    ),

    GetPage(
      name: Routes.language,
      page: () => const LanguagePage(),
    ),

    GetPage(
      name: Routes.introduction,
      page: () => const IntroductionPage(),
    ),

    // Auth Pages
    GetPage(
      name: Routes.auth,
      page: () => const AuthPage(),
      binding: AuthBinding(),
    ),

    GetPage(
      name: Routes.verify,
      page: () => const VerifyPage(),
      // binding: AuthBinding(),
    ),

    // Home page
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    // Profile Pages
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
    ),
  ];
}
