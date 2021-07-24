// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/ui/pages/home/components/home_drawer.dart';
import 'package:taxiye_passenger/ui/pages/home/components/location_search.dart';
import 'package:taxiye_passenger/ui/pages/home/components/service_list.dart';
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
    return Stack(
      children: [
        Scaffold(
          key: _scaffoldKey,
          body: Stack(
            children: [
              const Center(
                child: Text('Home page', style: AppTheme.title),
              ),
              CircleNav(
                icon: Icons.menu_rounded,
                onTap: () => _scaffoldKey.currentState?.openDrawer(),
              ),
              Positioned(
                bottom: 0.0,
                child: SizedBox(
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const LocationSearch(),
                      Obx(() => ServiceList(
                            services: homeServices,
                            selectedService: controller.selectedService,
                            onSelectService: (selectedService) =>
                                controller.selectedService = selectedService,
                          )),
                    ],
                  ),
                ),
              )
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
        ),
      ],
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    switch (drawerIndexdata) {
      case DrawerIndex.myWallet:
        // Todo: nav to wallets page
        break;
      case DrawerIndex.promotions:
        // Todo: nav to promotions page
        break;
      case DrawerIndex.myOrders:
        // Todo: nav to orders page
        break;
      case DrawerIndex.myDrivers:
        // Todo: nav to drivers page
        break;
      case DrawerIndex.paymentMethod:
        // Todo: nav to payment method page
        break;
      case DrawerIndex.legals:
        // Todo: nav to legals page
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




// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   State<HomePage> createState() => HomePageState();
// }

// class HomePageState extends State<HomePage> {
//   final Completer<GoogleMapController> _controller = Completer();

//   final CameraPosition _kGooglePlex = const CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );

//   final CameraPosition _kLake = const CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }
