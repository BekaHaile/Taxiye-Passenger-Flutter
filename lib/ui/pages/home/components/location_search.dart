import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class LocationSearch extends StatelessWidget {
  const LocationSearch({
    Key? key,
    required this.onRoutePickLocation,
  }) : super(key: key);

  final VoidCallback onRoutePickLocation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
      child: Container(
        decoration: const BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0)),
                  onPressed: onRoutePickLocation,
                  child: Text(
                    'where_to'.tr,
                    style: AppTheme.title
                        .copyWith(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  child: Row(
                    children: [
                      const Icon(CustomIcons.clock,
                          color: AppTheme.darkTextColor),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'now'.tr,
                          style: AppTheme.title.copyWith(fontSize: 14.0),
                        ),
                      ),
                      const Icon(Icons.expand_more,
                          color: AppTheme.darkTextColor),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
