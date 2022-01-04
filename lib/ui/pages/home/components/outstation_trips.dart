import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class OutStationTrips extends StatelessWidget {
  const OutStationTrips({
    Key? key,
    required this.onSelectTripType,
    required this.selectedOutStationType,
  }) : super(key: key);

  final OutStationType selectedOutStationType;
  final Function(OutStationType outStationType) onSelectTripType;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: OutStationTripTile(
                outStationType: OutStationType.oneWay,
                isActive: selectedOutStationType == OutStationType.oneWay,
                onTap: () => onSelectTripType(OutStationType.oneWay))),
        const SizedBox(width: 20.0),
        Expanded(
            child: OutStationTripTile(
                outStationType: OutStationType.roundTrip,
                isActive: selectedOutStationType == OutStationType.roundTrip,
                onTap: () => onSelectTripType(OutStationType.roundTrip))),
      ],
    );
  }
}

class OutStationTripTile extends StatelessWidget {
  const OutStationTripTile({
    Key? key,
    required this.outStationType,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final OutStationType outStationType;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
          border: Border.all(
              color: isActive ? AppTheme.yellowColor : Colors.transparent,
              width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
          child: Text(
            (outStationType == OutStationType.oneWay ? 'one_way' : 'round_trip')
                .tr,
            textAlign: TextAlign.center,
            style: AppTheme.title.copyWith(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
