import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/location_icons.svg',
                  height: 155.0,
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.streetAddress,
                        style: AppTheme.title.copyWith(fontSize: 16.0),
                        decoration: AppTheme.textFieldDecoration.copyWith(
                          hintText: 'your_location'.tr,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                          hintStyle: AppTheme.subtitle.copyWith(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.drag_handle,
                              size: 20.0,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        keyboardType: TextInputType.streetAddress,
                        style: AppTheme.title.copyWith(fontSize: 16.0),
                        decoration: AppTheme.textFieldDecoration.copyWith(
                          hintText: 'Destination'.tr,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                          hintStyle: AppTheme.subtitle.copyWith(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.drag_handle,
                              size: 20.0,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      TextField(
                        keyboardType: TextInputType.streetAddress,
                        style: AppTheme.title.copyWith(fontSize: 16.0),
                        decoration: AppTheme.textFieldDecoration.copyWith(
                          hintText: 'add_more_stops'.tr,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 12.0),
                          hintStyle: AppTheme.subtitle.copyWith(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.drag_handle,
                              size: 20.0,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DistancePill(
                  text: '23 ' + 'km'.tr,
                  icon: CustomIcons.clock,
                ),
                DistancePill(
                  text: '22 ' + 'min'.tr,
                  icon: CustomIcons.clock,
                ),
                const DistancePill(
                  text: 'now',
                  icon: CustomIcons.clock,
                )
              ],
            ),
            const SizedBox(height: 20.0),
            RoundedButton(
                text: 'choose_vehicles'.tr,
                onPressed: () {
                  // Todo: choose vehicles
                })
          ],
        ),
      ),
    );
  }
}

class DistancePill extends StatelessWidget {
  const DistancePill({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(1, 1),
          ),
        ],
        border: Border.all(color: AppTheme.greyBorder),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppTheme.darkTextColor,
            size: 18.0,
          ),
          const SizedBox(width: 8.0),
          Text(
            text.tr,
            style: AppTheme.body.copyWith(fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
