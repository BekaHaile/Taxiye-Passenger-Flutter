import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class CircleNav extends StatelessWidget {
  const CircleNav({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: kPagePadding),
      child: GestureDetector(
        onTap: onTap ?? () => Get.back(),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Icon(
            icon ??
                (GetPlatform.isAndroid
                    ? Icons.arrow_back
                    : Icons.arrow_back_ios),
            color: AppTheme.darkTextColor,
          ),
        ),
      ),
    );
  }
}
