import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/translations/am_translation.dart';
import 'package:taxiye_passenger/shared/translations/ar_translation.dart';
import 'package:taxiye_passenger/shared/translations/en_us_translation.dart';
import 'package:taxiye_passenger/shared/translations/om_translation.dart';
import 'package:taxiye_passenger/shared/translations/sw_translation.dart';
import 'package:taxiye_passenger/shared/translations/tigrinya_translations.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enUs,
        'am': am,
        'ar': ar,
        'sw': sw,
        'om': om,
        'tg': tg,
      };
}
