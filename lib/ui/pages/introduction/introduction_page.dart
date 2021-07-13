import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.centerRight, child: Text('skip'.tr)),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 277.0,
                height: 275.0,
                decoration: const BoxDecoration(
                  color: AppTheme.lightSilverColor,
                  shape: BoxShape.circle,
                ),
                // child: Image.asset('assets/images/image1.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'intro1_title'.tr,
                    style: AppTheme.title.copyWith(fontSize: 16.0),
                  ),
                ),
                Text('intro1_info'.tr,
                    style:
                        AppTheme.title.copyWith(fontWeight: FontWeight.w700)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: RoundedButton(
                text: 'next'.tr,
                width: Get.width * 0.2,
                onPressed: () {
                  // Todo: change info number
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
