import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/driver_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/home_drawer.dart';
import 'package:taxiye_passenger/ui/pages/home/components/looking_drivers.dart';
import 'package:taxiye_passenger/ui/pages/home/components/pick_service.dart';
import 'package:taxiye_passenger/ui/pages/home/components/pick_vehicle.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_feedback.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_progress.dart';
import 'package:taxiye_passenger/ui/pages/home/map/map.dart';
import 'package:taxiye_passenger/ui/pages/home/simple_map.dart';
import 'package:taxiye_passenger/ui/pages/profile/profile_page.dart';
import 'package:taxiye_passenger/ui/widgets/circle_nav.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final HomeController controller = Get.find();
  late Widget screenView;
  late DrawerIndex drawerIndex;

  late AnimationController iconAnimationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late List<HomeService> homeServices;

  @override
  void initState() {
    drawerIndex = DrawerIndex.myWallet;
    screenView = const ProfilePage();
    iconAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 0));

    homeServices = [
      HomeService(title: HomeServiceIndex.ride, icon: CustomIcons.car),
      HomeService(title: HomeServiceIndex.delivery, icon: CustomIcons.delivery),
      HomeService(title: HomeServiceIndex.rental, icon: CustomIcons.rental),
      HomeService(title: HomeServiceIndex.outStation, icon: CustomIcons.car),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: [
            // MapScreen(),
            const SimpleMap(),
            CircleNav(
              icon: CustomIcons.menu,
              onTap: () => _scaffoldKey.currentState?.openDrawer(),
            ),
          ],
        ),
        drawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Drawer(
            child: HomeDrawer(
              screenIndex: drawerIndex,
              iconAnimationController: iconAnimationController,
              callBackIndex: (DrawerIndex indexType) {
                changeIndex(indexType);
              },
            ),
          ),
        ),
        bottomSheet: Obx(() => tripViews()));
  }

  Widget tripViews() {
    switch (controller.tripStep) {
      case TripStep.locationSearch:
        return PickService(homeServices: homeServices);
      case TripStep.pickVehicle:
        return const PickVehicle();
      case TripStep.lookingDrivers:
        return LookingDrivers(
          onDriverFound: () => controller.onDriverFound(),
          onCancelDriverSearch: () => controller.onCancelDriverSearch(),
        );
      case TripStep.driverDetail:
        return DriverDetail(
          driver: controller.driver,
          vehicle: controller.vehicle,
          onDriverAprroved: () => controller.onDriverApproved(),
        );
      case TripStep.tripStarted:
        return TripProgress(
          onTripEnded: () => controller.onTripEnded(),
        );
      case TripStep.tripDetail:
        return const TripDetail();
      case TripStep.tripFeedback:
        return TripFeadback(
            driver: controller.driver, vehicle: controller.vehicle);
      default:
        return const Text('pick vehicle');
    }
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    Get.back();
    switch (drawerIndexdata) {
      case DrawerIndex.myWallet:
        //nav to wallets page
        Get.toNamed(Routes.wallet);
        break;
      case DrawerIndex.promotions:
        //nav to promotions page
        Get.toNamed(Routes.promotions);
        break;
      case DrawerIndex.myOrders:
        //nav to orders page
        Get.toNamed(Routes.orders);
        break;
      case DrawerIndex.myDrivers:
        // nav to drivers page
        Get.toNamed(Routes.drivers);
        break;
      case DrawerIndex.paymentMethod:
        // nav to payment method page
        Get.toNamed(Routes.payment);
        break;
      case DrawerIndex.settings:
        // nav to legals page
        Get.toNamed(Routes.settings);
        break;
      case DrawerIndex.legals:
        // nav to legals page
        Get.toNamed(Routes.legals);
        break;
      default:
    }
  }
}

class HomeService {
  HomeService({
    required this.title,
    this.icon = CustomIcons.car,
  });

  HomeServiceIndex title;
  IconData icon;
}
