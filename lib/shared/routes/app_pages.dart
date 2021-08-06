import 'package:get/route_manager.dart';
import 'package:taxiye_passenger/ui/bindings/auth_binding.dart';
import 'package:taxiye_passenger/ui/bindings/home_binding.dart';
import 'package:taxiye_passenger/ui/bindings/payment_binding.dart';
import 'package:taxiye_passenger/ui/bindings/profile_binding.dart';
import 'package:taxiye_passenger/ui/pages/drivers/drivers_page.dart';
import 'package:taxiye_passenger/ui/pages/pages.dart';
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
      page: () => AuthPage(),
      binding: AuthBinding(),
    ),

    GetPage(
      name: Routes.verify,
      page: () => const VerifyPage(),
    ),

    GetPage(
      name: Routes.setProfile,
      page: () => const SetProfilePage(),
    ),

    GetPage(
      name: Routes.setPasscode,
      page: () => const SetPasscodePage(),
    ),

    // Home page
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.pickLocation,
      page: () => PickLocationPage(),
    ),

    // Profile Pages
    GetPage(
      name: Routes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),

    // Payment Pages
    GetPage(
      name: Routes.payment,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),

    // Settings page
    GetPage(
      name: Routes.settings,
      page: () => SettingsPage(),
    ),

    // Legals Pages
    GetPage(
      name: Routes.legals,
      page: () => LegalsPage(),
    ),

    // Drivers Page
    GetPage(
      name: Routes.drivers,
      page: () => DriversPage(),
    ),
  ];
}
