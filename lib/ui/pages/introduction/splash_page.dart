import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/introduction/language_page.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';

class SplashPage extends GetView<AuthController> {
  const SplashPage({Key? key}) : super(key: key);

  Future<bool> splashDelay() async {
    // await Future<dynamic>.delayed(const Duration(milliseconds: 2000));
    await controller.determineNextRoute();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    controller.determineNextRoute();
    // return Scaffold(
    //   body: FutureBuilder<bool>(
    //     future: splashDelay(),
    //     builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
    //       if (!snapshot.hasData) {
    //         return const Center(
    //           child: Hero(
    //             tag: 'logoHero',
    //             child: LogoImage(),
    //           ),
    //         );
    //       } else {
    //         return const LanguagePage();
    //       }
    //     },
    //   ),
    // );
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
