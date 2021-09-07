import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                DriverAvator(driver: driver, vehicle: vehicle),
                const SizedBox(height: 20.0),
                Text(
                  vehicle.name ?? '',
                  style: AppTheme.body.copyWith(color: AppTheme.darkColor),
                ),
                Text(
                  vehicle.liscensePlate ?? '',
                  style: AppTheme.body.copyWith(fontWeight: FontWeight.w700),
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
                      driver.userName ?? '',
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
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1.0),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularShadow(
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: AppTheme.darkTextColor,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        if (onRemove != null)
                          CircularShadow(
                            child: const Icon(
                              Icons.clear,
                              color: AppTheme.darkTextColor,
                            ),
                            onTap: onRemove,
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
