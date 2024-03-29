import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';

class Language {
  const Language({
    required this.name,
    required this.code,
  });

  final String name;
  final String code;
}

class Country {
  const Country({
    required this.name,
    required this.code,
    required this.isoCode,
    required this.currency,
  });

  final String name;
  final String code;
  final String isoCode;
  final String currency;
}

class Option {
  Option({
    required this.title,
    required this.subtitle,
    this.leadingIcon,
    this.leadingIconAsset,
    this.isActive = true,
    this.toggleValue,
  });

  String title;
  String subtitle;
  IconData? leadingIcon;
  String? leadingIconAsset;
  bool isActive;
  bool? toggleValue;
}

class TabTitle {
  const TabTitle({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
}

class ExchangePoint {
  const ExchangePoint({
    required this.text,
    required this.icon,
    required this.option,
  });

  final String text;
  final String icon;
  final ExchangePointOption option;
}

class VehicleType {
  const VehicleType({
    required this.type,
    required this.rideType,
  });

  final String type;
  final int rideType;
}

class PaymentType {
  const PaymentType({
    required this.paymentMode,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  final int paymentMode;
  final String text;
  final IconData icon;
  final Color iconColor;
}

class RouteDistnaceInfo {
  RouteDistnaceInfo({
    this.distance,
    this.duration,
    this.durationInTraffic,
  });

  int? distance;
  int? duration;
  int? durationInTraffic;
}
