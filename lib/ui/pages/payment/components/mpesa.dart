import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/white_appbar.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class Mpesa extends StatefulWidget {
  const Mpesa({Key? key}) : super(key: key);

  @override
  State<Mpesa> createState() => _MpesaState();
}

class _MpesaState extends State<Mpesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WhiteAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'mpessa'.tr,
              style: AppTheme.body.copyWith(
                fontSize: 24.0,
                color: AppTheme.darkColor,
              ),
            ),
            const SizedBox(height: 30.0),
    ],),),);
  }
}