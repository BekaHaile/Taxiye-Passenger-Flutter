import 'dart:io';

import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/promotions_controller.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ReferFriendPage extends GetView<PromotionsController> {
  const ReferFriendPage({Key? key}) : super(key: key);

  final contentSpacing = const SizedBox(height: 30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
            kPagePadding, 0.0, kPagePadding, kPagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'refer_friend'.tr,
              style: AppTheme.body.copyWith(fontSize: 24.0),
            ),
            contentSpacing,
            Column(
              children: [
                Image.asset(
                  'assets/images/refer_friend.png',
                  width: 165.0,
                  height: 180.0,
                ),
                contentSpacing,
                Text(
                  'refer_friend_info'.tr,
                  textAlign: TextAlign.center,
                  style: AppTheme.title
                      .copyWith(fontSize: 14.0, color: AppTheme.darkTextColor),
                ),
              ],
            ),
            contentSpacing,
            Container(
              decoration: AppTheme.boxDecoration,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'your_referal_code'.tr,
                      style: AppTheme.title.copyWith(
                          fontSize: 14.0, color: AppTheme.darkTextColor),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: AppTheme.lightSilverColor,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          controller.referralNumber,
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.darkColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            contentSpacing,
            RoundedButton(
                text: 'share'.tr,
                onPressed: () {
                  // set app link for android and IOS
                  // Todo: change app store link
                  String downloadLink = Platform.isAndroid
                      ? 'https://taxiye.app.link/9wlGrQIXBlb'
                      : 'https://apps.apple.com/us/app/taxiye-passenger/id1455202776';

                  Share.share('${'share_referral'.trParams({
                        'code': controller.referralNumber
                      })} \n $downloadLink');
                })
          ],
        ),
      ),
    );
  }
}
