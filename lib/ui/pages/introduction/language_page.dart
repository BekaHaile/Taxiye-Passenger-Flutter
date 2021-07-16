import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/shared/routes/app_pages.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  _LanguagePageState createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String selectedLanguage = "English";
  List<String> languages = [
    "English",
    "Swahili",
    "Arabic",
    "Oromiffa",
    "Amharic"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Hero(
                  tag: 'logoHero',
                  child: LogoImage(
                    width: Get.width * 0.4,
                    height: Get.height * 0.12,
                  ),
                ),
                SizedBox(height: Get.height * 0.08),
                Text(
                  'select_language'.tr,
                  style: AppTheme.title.copyWith(fontSize: 16.0),
                ),
                const SizedBox(height: 16.0),
                Wrap(
                  spacing: 24.0,
                  runSpacing: 12.0,
                  children: [
                    ...languages.map(
                      (language) => GestureDetector(
                        onTap: () => setState(() {
                          selectedLanguage = language;
                        }),
                        child: Chip(
                          backgroundColor: AppTheme.lightSilverColor,
                          side: BorderSide(
                            color: selectedLanguage == language
                                ? Theme.of(context).primaryColor
                                : Colors.transparent,
                            width: 2.0,
                          ),
                          // avatar: ,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (selectedLanguage == language)
                                const Icon(
                                  Icons.check,
                                  size: 20.0,
                                ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  language,
                                  style: AppTheme.title.copyWith(
                                      fontSize: 16.0,
                                      color: AppTheme.darkTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // LanguagePill(
                    //   isActive: selectedLanguage == languages[i],
                    //   language: languages[i],
                    //   onTap: () {
                    //     setState(() {
                    //       selectedLanguage = languages[i];
                    //     });
                    //   },
                    // ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: RoundedButton(
                text: 'continue'.tr,
                width: Get.width * 0.65,
                onPressed: () => Get.toNamed(Routes.introduction),
              ),
            )
          ],
        ),
      ),
    );
  }
}
