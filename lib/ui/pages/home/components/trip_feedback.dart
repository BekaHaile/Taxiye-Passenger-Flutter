import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/pages/home/components/driver_detail.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/ui/widgets/shadow_button.dart';

class TripFeadback extends GetView<HomeController> {
  const TripFeadback({
    Key? key,
    required this.driver,
    required this.vehicle,
  }) : super(key: key);

  final Driver driver;
  final Vehicle vehicle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DriverAvator(driver: driver, vehicle: vehicle),
              const SizedBox(height: 25.0),
              Text(
                'Cameron Williamson',
                style: AppTheme.title.copyWith(fontSize: 16.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RatingBar.builder(
                    initialRating: 4.9,
                    minRating: 1,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    onRatingUpdate: (rating) => {},
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    driver.rating?.toStringAsFixed(1) ?? '',
                    style: AppTheme.title.copyWith(fontSize: 14.0),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShadowButton(
                      height: 40,
                      text: 'block'.tr,
                      borderColor: AppTheme.primaryColor,
                      onPressed: () {
                        //Todo: on block driver
                      }),
                  const SizedBox(width: 20.0),
                  RoundedButton(
                      width: 165.0,
                      height: 40.0,
                      text: 'add_to_favourites'.tr,
                      textStyle: AppTheme.title.copyWith(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Todo: Add Driver to favourites
                      }),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'how_was_trip'.tr,
                style: AppTheme.title.copyWith(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text('feadback_info'.tr,
                  textAlign: TextAlign.center,
                  style: AppTheme.body.copyWith(color: AppTheme.darkColor)),
              const SizedBox(height: 20.0),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                itemSize: 35,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: AppTheme.yellowColor,
                ),
                onRatingUpdate: (rating) => {},
              ),
              const SizedBox(height: 20.0),
              TextField(
                keyboardType: TextInputType.streetAddress,
                style: AppTheme.title.copyWith(fontSize: 16.0),
                decoration: AppTheme.textFieldDecoration.copyWith(
                  hintText: 'additional_comments'.tr,
                  alignLabelWithHint: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppTheme.greyColor,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintStyle: AppTheme.subtitle
                      .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShadowButton(
                      height: 40.0,
                      text: 'skip'.tr,
                      borderColor: AppTheme.primaryColor,
                      onPressed: () {
                        //Todo: on block driver
                      }),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: RoundedButton(
                        text: 'submit'.tr,
                        onPressed: () => controller.submitFeedBack()),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
