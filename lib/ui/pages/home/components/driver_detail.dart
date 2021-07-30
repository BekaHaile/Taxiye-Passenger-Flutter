import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/pages/home/components/slide_cancel.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';

class DriverDetail extends StatelessWidget {
  const DriverDetail({
    Key? key,
    required this.driver,
    required this.vehicle,
    required this.onDriverAprroved,
  }) : super(key: key);

  final Driver driver;
  final Vehicle vehicle;
  final VoidCallback onDriverAprroved;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => onDriverAprroved(),
                  child: Text(
                    'driver_on_route'.tr,
                    style: AppTheme.title.copyWith(fontSize: 18.0),
                  ),
                ),
                const SizedBox(width: 10.0),
                Text('02:35',
                    style: AppTheme.title
                        .copyWith(fontSize: 17.0, color: AppTheme.primaryColor))
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.shadowColor.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(1, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        DriverAvator(driver: driver, vehicle: vehicle),
                        const SizedBox(height: 20.0),
                        Text(
                          vehicle.name ?? '',
                          style:
                              AppTheme.body.copyWith(color: AppTheme.darkColor),
                        ),
                        Text(
                          vehicle.liscensePlate ?? '',
                          style: AppTheme.body
                              .copyWith(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              driver.name ?? '',
                              style: AppTheme.title.copyWith(fontSize: 18.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4.9,
                                    minRating: 1,
                                    itemSize: 20,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 1.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: AppTheme.yellowColor,
                                    ),
                                    onRatingUpdate: (rating) => {},
                                  ),
                                  const SizedBox(width: 5.0),
                                  CircleAvatar(
                                    radius: 15.0,
                                    backgroundColor: AppTheme.yellowColor,
                                    child: Text(
                                      driver.rating?.toStringAsFixed(1) ?? '',
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
                            Container(
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
                              child: const Icon(
                                Icons.chat_bubble_outline,
                                color: AppTheme.darkTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SlideCancel(
              onCancel: () {
                // Todo: on cancell driver.
              },
            )
          ],
        ),
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
            name: driver.name,
          ),
        ),
        Positioned(
          bottom: -15.0,
          child: Image.asset(
            'assets/images/${vehicle.name}.png',
            width: 80.0,
            height: 40.0,
          ),
        ),
      ],
    );
  }
}
