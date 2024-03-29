import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    Key? key,
    this.imageHeight,
  }) : super(key: key);

  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/empty_state.svg',
              height: imageHeight,
            ),
            const SizedBox(height: 16.0),
            Text(
              'empty_state_title'.tr,
              style: AppTheme.body.copyWith(fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}
