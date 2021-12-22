import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class DriverTile extends StatelessWidget {
  const DriverTile({
    Key? key,
    required this.driver,
    required this.vehicle,
    this.onRemove,
  }) : super(key: key);

  final Driver driver;
  final Vehicle vehicle;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Column(
              children: [
                DriverAvator(driver: driver, vehicle: vehicle),
                const SizedBox(height: 20.0),
                // Text(
                //   vehicle.regionName ?? '',
                //   style: AppTheme.body.copyWith(color: AppTheme.darkColor),
                // ),
                SizedBox(
                  width: 120.0,
                  child: Text(
                    vehicle.vehicleNumber ?? '',
                    textAlign: TextAlign.center,
                    style: AppTheme.body
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 12.0),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      driver.userName ?? driver.driverName ?? '',
                      style: AppTheme.title.copyWith(fontSize: 18.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBarIndicator(
                            rating: driver.rating ?? driver.avgRating ?? 0,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: AppTheme.yellowColor,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
                            direction: Axis.horizontal,
                          ),
                          const SizedBox(width: 5.0),
                          CircleAvatar(
                            radius: 10.0,
                            backgroundColor: AppTheme.yellowColor,
                            child: Text(
                              driver.rating?.toStringAsFixed(1) ??
                                  driver.avgRating?.toStringAsFixed(1) ??
                                  '',
                              style: const TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularShadow(
                          child: const Icon(
                            Icons.call,
                            color: AppTheme.darkTextColor,
                          ),
                          onTap: () => launch('tel:${driver.phoneNo ?? ''}'),
                        ),
                        const SizedBox(width: 20.0),
                        if (onRemove != null)
                          CircularShadow(
                            child: const Icon(
                              Icons.clear,
                              color: AppTheme.darkTextColor,
                            ),
                            onTap: () {
                              // show confirmation dialog
                              Get.dialog(ConfirmDialog(
                                title: 'remove_fav_driver'.tr,
                                content: 'remove_fav_driver_info'.tr,
                                actionCallback: onRemove,
                                actionText: 'yes',
                                cancelText: 'no',
                              ));
                            },
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircularShadow extends StatelessWidget {
  const CircularShadow({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              blurRadius: 10,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

class DriverAvator extends StatelessWidget {
  const DriverAvator({
    Key? key,
    required this.driver,
    required this.vehicle,
  }) : super(key: key);

  final Driver driver;
  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0.0, 4.0),
              ),
            ],
            border: Border.all(color: AppTheme.primaryColor),
          ),
          child: ProfileAvatar(
            canEdit: false,
            radius: 40.0,
            name: driver.userName,
            imageUrl: driver.driverImage,
          ),
        ),
        Positioned(
          bottom: -15.0,
          child:
              // vehicle.images?.tabNormal?.isNotEmpty ?? false
              //     ? CachedNetworkImage(
              //         imageUrl: vehicle.images!.tabNormal!,
              //         width: 80.0,
              //         height: 40.0,
              //         progressIndicatorBuilder: (context, url, downloadProgress) =>
              //             const SizedBox(),
              //         errorWidget: (context, url, error) => const Icon(Icons.error),
              //       )
              //     : // Todo: get default asset image based on the category name
              Image.asset(
            'assets/images/Taxiye - Sedan.png',
            width: 80.0,
            height: 40.0,
          ),
        )
      ],
    );
  }
}
