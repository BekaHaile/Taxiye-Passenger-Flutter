import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/confirm_place.dart';
import 'package:taxiye_passenger/ui/pages/home/components/driver_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/home_drawer.dart';
import 'package:taxiye_passenger/ui/pages/home/components/location_search.dart';
import 'package:taxiye_passenger/ui/pages/home/components/locations_list.dart';
import 'package:taxiye_passenger/ui/pages/home/components/looking_drivers.dart';
import 'package:taxiye_passenger/ui/pages/home/components/pick_service.dart';
import 'package:taxiye_passenger/ui/pages/home/components/pick_vehicle.dart';
import 'package:taxiye_passenger/ui/pages/home/components/schedule_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_detail.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_feedback.dart';
import 'package:taxiye_passenger/ui/pages/home/components/trip_progress.dart';
import 'package:taxiye_passenger/ui/pages/home/map/ride_map.dart';
import 'package:taxiye_passenger/ui/pages/profile/profile_page.dart';
import 'package:taxiye_passenger/ui/widgets/circle_nav.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  final HomeController controller = Get.find();
  late Widget screenView;
  late DrawerIndex drawerIndex;

  late AnimationController iconAnimationController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late List<HomeService> homeServices;

  @override
  void initState() {
    WidgetsBinding.instance?.addObserver(this);
    drawerIndex = DrawerIndex.home;
    screenView = ProfilePage();
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
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WillPopScope(
          onWillPop: controller.onHomeBack,
          child: Scaffold(
            key: _scaffoldKey,
            // resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                // MapScreen(),
                const RideMap(),
                // SimpleMarkerAnimationExample(),

                Obx(() => controller.tripStep == TripStep.pickVehicle
                    ? CircleNav(
                        onTap: () => controller.onHomeBack(),
                      )
                    : CircleNav(
                        icon: CustomIcons.menu,
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
                      )),

                Obx(() => controller.tripStep == TripStep.tripStarted ||
                        controller.tripStep == TripStep.tripDetail
                    ? const SOS()
                    : const SizedBox()),

                Obx(() => controller.tripStep == TripStep.pickOnMap ||
                        controller.tripStep == TripStep.addPlace ||
                        controller.tripStep == TripStep.confirmPlace
                    ? Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            LocationSearch(
                                locationType: controller.focusedSearchLocation),
                            Expanded(child: getLocationLists()),
                            Padding(
                                padding: const EdgeInsets.all(kPagePadding),
                                child: RoundedButton(
                                    text: controller.tripStep ==
                                            TripStep.pickOnMap
                                        ? 'confirm'.tr
                                        : 'next'.tr,
                                    onPressed: () {
                                      switch (controller.tripStep) {
                                        case TripStep.pickOnMap:
                                          if (controller
                                                  .focusedSearchLocation ==
                                              LocationType.pickUp) {
                                            controller.onRoutePickLocation();
                                          } else {
                                            controller.confirmPickedLocation();
                                          }

                                          break;
                                        case TripStep.addPlace:
                                          if (controller.dropOffLocation !=
                                              null) {
                                            controller.tripStep =
                                                TripStep.confirmPlace;
                                          } else {
                                            Get.snackbar('success',
                                                'place_not_picked_error'.tr);
                                          }

                                          break;
                                        default:
                                      }
                                    }))
                          ],
                        ),
                      )
                    : const SizedBox()),
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
            bottomSheet: Obx(() => tripViews()),
          ),
        ),
        Obx(() => ModalProgressHUD(
              child: const SizedBox(),
              inAsyncCall: controller.status.value == Status.loading,
            )),
      ],
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    controller.onAppStateChange(state);
  }

  Widget getLocationLists() {
    return Obx(() => controller.locationSuggestions.isEmpty ||
            (controller.focusedSearchLocation == LocationType.dropOff &&
                controller.dropOffLocationSearch.isEmpty) ||
            (controller.focusedSearchLocation == LocationType.pickUp &&
                controller.pickUpLocationSearch.isEmpty)
        ? const SizedBox()
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPagePadding),
            child: SizedBox(
              height: Get.height * 0.45,
              child: LocationsList(
                suggestions: controller.locationSuggestions,
                onPickLocation: (suggestion) =>
                    controller.onPickLocationFromSearch(suggestion),
              ),
            ),
          ));
  }

  Widget tripViews() {
    switch (controller.tripStep) {
      case TripStep.whereTo:
        return PickService(homeServices: homeServices);
      case TripStep.pickOnMap:
        return const SizedBox();
      case TripStep.pickVehicle:
        return const PickVehicle();
      case TripStep.lookingDrivers:
        return LookingDrivers(
          onCancelDriverSearch: () => controller.onCancelRide(),
        );
      case TripStep.driverDetail:
        return const DriverDetail();
      case TripStep.tripStarted:
        return const TripProgress();
      case TripStep.tripDetail:
        return TripDetail(
          rideDetail: controller.rideDetail ?? RideDetail(),
        );
      case TripStep.tripFeedback:
        return TripFeadback(
            driver: controller.driver!, vehicle: controller.driverVehicle);
      case TripStep.confirmPlace:
        return const ConfirmPlace();
      case TripStep.scheduleDetail:
        return const ScheduleDetail();
      default:
        return const SizedBox();
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

class SOS extends StatelessWidget {
  const SOS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40.0,
      right: 16.0,
      child: GestureDetector(
        onTap: () => launch('tel:$kSOSNumber'),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: AppTheme.redSOSColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'SOS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
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
