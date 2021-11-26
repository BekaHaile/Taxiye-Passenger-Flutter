import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class SlideCancel extends StatelessWidget {
  const SlideCancel({
    Key? key,
    required this.onCancel,
  }) : super(key: key);

  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: Get.width * 0.8,
              decoration: const BoxDecoration(
                color: AppTheme.lightSilverColor,
                borderRadius: BorderRadius.all(Radius.circular(45.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  'side_to_cancel'.tr.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    letterSpacing: 0.27,
                    color: AppTheme.greyColor3,
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: Get.width * 0.7,
            child: Dismissible(
              direction: DismissDirection.startToEnd,
              background: Container(
                decoration: const BoxDecoration(
                  color: AppTheme.lightSilverColor,
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                ),
              ),
              key: const Key('some key'),
              confirmDismiss: (direction) async {
                onCancel();
                return false;
              },
              onDismissed: (direction) => onCancel(),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 38.0,
                  height: 38.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.16),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.clear,
                    color: AppTheme.darkColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
