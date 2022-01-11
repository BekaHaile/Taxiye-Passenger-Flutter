import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class OutStationPackages extends StatelessWidget {
  const OutStationPackages({
    Key? key,
    required this.packages,
    required this.selectedPackage,
    required this.onSelectPackage,
  }) : super(key: key);

  final List<FareStructure> packages;
  final FareStructure selectedPackage;
  final Function(FareStructure package) onSelectPackage;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final FareStructure package = packages[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 4.0, 10.0, 5.0),
          child: PackageTile(
            package: package,
            isActive: selectedPackage == package,
            onTap: () => onSelectPackage(package),
          ),
        );
      },
      itemCount: packages.length,
    );
  }
}

class PackageTile extends StatelessWidget {
  const PackageTile({
    Key? key,
    required this.package,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final FareStructure package;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
        child: Center(
          child: Row(
            children: [
              Radio(
                value: true,
                groupValue: isActive,
                activeColor: AppTheme.yellowColor,
                onChanged: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  package.packageName ?? '',
                  textAlign: TextAlign.center,
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
