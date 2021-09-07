import 'package:get/route_manager.dart';
import 'package:taxiye_passenger/ui/bindings/auth_binding.dart';
import 'package:taxiye_passenger/ui/bindings/home_binding.dart';
import 'package:taxiye_passenger/ui/bindings/payment_binding.dart';
import 'package:taxiye_passenger/ui/bindings/profile_binding.dart';
import 'package:taxiye_passenger/ui/pages/home/map/ride_map.dart';
import 'package:taxiye_passenger/ui/pages/pages.dart';
import 'package:taxiye_passenger/ui/pages/promotion/coupons_page.dart';
import 'package:taxiye_passenger/ui/pages/promotion/exchange_points_page.dart';
import 'package:taxiye_passenger/ui/pages/promotion/promo_detail_page.dart';
import 'package:taxiye_passenger/ui/pages/promotion/promotions_page.dart';
import 'package:taxiye_passenger/ui/pages/promotion/refer_friend_page.dart';
import 'package:taxiye_passenger/ui/pages/wallet/wallet_history_page.dart';
import 'package:taxiye_passenger/ui/pages/wallet/wallet_transfer_page.dart';

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
      page: () => PickLocationPage(),
    ),

    // wallet Pages
    GetPage(
      name: Routes.wallet,
      page: () => WalletPage(),
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
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
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
      page: () => SettingsPage(),
    ),

    // Legals Pages
    GetPage(
      name: Routes.legals,
      page: () => LegalsPage(),
    ),

    // Drivers Pages
    GetPage(
      name: Routes.drivers,
      page: () => DriversPage(),
    ),

    // Drivers Pages
    GetPage(
      name: Routes.orders,
      page: () => OrdersPage(),
    ),

    GetPage(
      name: Routes.orderDetails,
      page: () => const OrderDetailsPage(),
    ),
  ];
}
