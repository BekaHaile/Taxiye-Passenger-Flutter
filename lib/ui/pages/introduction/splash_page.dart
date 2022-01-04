import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with WidgetsBindingObserver {
  AuthController controller = Get.find();
  @override
  void initState() {
    super.initState();

    controller.determineNextRoute();
    // Add the observer.
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    // Remove the observer
    WidgetsBinding.instance!.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        controller.determineNextRoute();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Hero(
          tag: 'logoHero',
          child: LogoImage(),
        ),
      ),
    );
  }
}
