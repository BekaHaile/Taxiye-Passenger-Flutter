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
  });

  final String name;
  final String code;
  final String isoCode;
}

class Option {
  Option({
    required this.title,
    required this.subtitle,
    this.leadingIcon = Icons.info,
    this.toggleValue,
  });

  String title;
  String subtitle;
  IconData leadingIcon;
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
  final IconData icon;
  final ExchangePointOption option;
}

class SavedPlace {
  const SavedPlace({
    required this.placeTitle,
    required this.placeAddress,
  });

  final String placeTitle;
  final String placeAddress;
}
