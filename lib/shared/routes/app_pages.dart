import 'package:get/route_manager.dart';
import 'package:taxiye_passenger/ui/bindings/auth_binding.dart';
import 'package:taxiye_passenger/ui/bindings/drivers_binding.dart';
import 'package:taxiye_passenger/ui/bindings/home_binding.dart';
import 'package:taxiye_passenger/ui/bindings/orders_binding.dart';
import 'package:taxiye_passenger/ui/bindings/payment_binding.dart';
import 'package:taxiye_passenger/ui/bindings/profile_binding.dart';
import 'package:taxiye_passenger/ui/pages/pages.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    // Introduction pages
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      binding: AuthBinding(),
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

    // Home pages
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.pickLocation,
      page: () => const PickLocationPage(),
    ),

    // wallet Pages
    GetPage(
      name: Routes.wallet,
      page: () => const WalletPage(),
    ),

    GetPage(
      name: Routes.walletTransfer,
      page: () => const WalletTransferPage(),
    ),

    GetPage(
      name: Routes.walletHistory,
      page: () => const WalletHistoryPage(),
    ),

    // Promotions pages
    GetPage(
      name: Routes.promotions,
      page: () => const PromotionsPage(),
    ),
    GetPage(
      name: Routes.exchangePoints,
      page: () => const ExchangePointsPage(),
    ),
    GetPage(
      name: Routes.promoDetail,
      page: () => const PromoDetailPage(),
    ),
    GetPage(
      name: Routes.coupons,
      page: () => const CouponsPage(),
    ),
    GetPage(
      name: Routes.referFreind,
      page: () => const ReferFriendPage(),
    ),

    // Profile Pages
    GetPage(
      name: Routes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.profileInfo,
      page: () => const ProfileInfoPage(),
    ),
    GetPage(
      name: Routes.emergencyContacts,
      page: () => const EmergencyContactsPage(),
    ),
    GetPage(
      name: Routes.savedPlaces,
      page: () => const SavedPlacesPage(),
    ),

    // Payment Pages
    GetPage(
      name: Routes.payment,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),

    // Settings pages
    GetPage(
      name: Routes.settings,
      page: () => const SettingsPage(),
    ),

    GetPage(
      name: Routes.privacySettings,
      page: () => const PrivacySettingsPage(),
    ),

    // Legals Pages
    GetPage(
      name: Routes.legals,
      page: () => const LegalsPage(),
    ),

    GetPage(
      name: Routes.legalDetails,
      page: () => const LegalDetailPage(),
    ),

    // Drivers Pages
    GetPage(
      name: Routes.drivers,
      page: () => DriversPage(),
      binding: DriversBinding(),
    ),

    // Drivers Pages
    GetPage(
      name: Routes.orders,
      page: () => OrdersPage(),
      binding: OrdersBinding(),
    ),

    GetPage(
      name: Routes.orderDetails,
      page: () => const OrderDetailsPage(),
    ),
  ];
}
