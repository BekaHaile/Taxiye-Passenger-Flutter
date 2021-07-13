import 'package:flutter/material.dart';
import 'package:taxiye_passenger/ui/pages/introduction/language_page.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  Future<bool> splashDelay() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 2000));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<bool>(
        future: splashDelay(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Hero(
                tag: 'logoHero',
                child: LogoImage(
                  width: Get.width * 0.4,
                  height: Get.height * 0.12,
                ),
              ),
            );
          } else {
            return const LanguagePage();
          }
        },
      ),
    );
  }
}
