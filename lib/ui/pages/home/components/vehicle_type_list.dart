import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class VehicleTypeList extends StatefulWidget {
  const VehicleTypeList({
    Key? key,
    required this.hasCorporate,
    required this.onFilterVehicle,
  }) : super(key: key);

  final bool hasCorporate;
  final Function(int rideType) onFilterVehicle;

  @override
  _VehicleTypeListState createState() => _VehicleTypeListState();
}

class _VehicleTypeListState extends State<VehicleTypeList> {
  late List<VehicleType> vehicleTypes;

  late VehicleType activeVehicleType;

  @override
  void initState() {
    vehicleTypes = [
      const VehicleType(type: 'normal', rideType: 0),
      const VehicleType(type: 'shared', rideType: 2),
    ];

    if (widget.hasCorporate) {
      vehicleTypes.add(const VehicleType(type: 'corporate', rideType: 1));
    }
    activeVehicleType = vehicleTypes.first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final VehicleType vehicleType = vehicleTypes[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: VehicleTypeTile(
            vehicleType: vehicleType,
            isActive: activeVehicleType == vehicleType,
            onTap: () {
              setState(() {
                activeVehicleType = vehicleType;
              });
              widget.onFilterVehicle(vehicleType.rideType);
            },
          ),
        );
      },
      itemCount: vehicleTypes.length,
    );
  }
}

class VehicleTypeTile extends StatelessWidget {
  const VehicleTypeTile({
    Key? key,
    required this.vehicleType,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final VehicleType vehicleType;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: isActive ? AppTheme.primaryColor : AppTheme.lightSilverColor,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Center(
          child: Text(
            vehicleType.type.tr,
            style: AppTheme.body.copyWith(
              color: isActive ? Colors.white : AppTheme.darkTextColor,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
