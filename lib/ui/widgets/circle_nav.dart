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
      padding: const EdgeInsets.only(top: 42.0, left: kPagePadding),
      child: GestureDetector(
        onTap: () => onTap ?? Get.back(),
        child: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor,
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 1),
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
