import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class TitleView extends StatelessWidget {
  const TitleView({
    Key? key,
    required this.title,
    this.subTitle,
  }) : super(key: key);

  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              title.tr,
              textAlign: TextAlign.center,
              style: AppTheme.title.copyWith(fontSize: 28.0),
            ),
          ),
          if (subTitle != null)
            Text(
              subTitle!.tr,
              textAlign: TextAlign.center,
              style: AppTheme.subtitle,
            )
        ],
      ),
    );
  }
}
