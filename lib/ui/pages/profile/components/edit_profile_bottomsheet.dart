import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class EditProfileBottomSheet extends StatefulWidget {
  const EditProfileBottomSheet({
    Key? key,
    required this.title,
    required this.user,
    required this.onValueChange,
  }) : super(key: key);

  final String title;
  final User user;
  final Function(Map<String, dynamic>? changePayload) onValueChange;

  @override
  State<EditProfileBottomSheet> createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {
  final _formKey = GlobalKey<FormState>();

  late Gender activeGender;
  late Country activeCountry;
  late Language activeLanguage;

  @override
  void initState() {
    super.initState();

    activeGender = widget.user.gender == 2 ? Gender.female : Gender.male;
    activeCountry = kCountries.firstWhere(
        (country) => country.code == widget.user.countryCode,
        orElse: () => kCountries.first);

    activeLanguage = kLanguages.firstWhere(
        (language) => language.code == widget.user.locale,
        orElse: () => kLanguages.first);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: AppTheme.bottomSheetDecoration,
        child: Padding(
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                (widget.title == 'full_name' ? 'enter_name' : widget.title).tr,
                style: AppTheme.title2,
              ),
              const SizedBox(height: 20.0),
              getEditContent(),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: RoundedButton(
                        text: 'cancel'.tr,
                        elevation: 0,
                        color: AppTheme.lightSilverColor,
                        textStyle: const TextStyle(
                          fontFamily: 'SegoeUi',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.darkColor,
                        ),
                        onPressed: () => Get.back()),
                  ),
                  const SizedBox(width: 20.0),
                  Expanded(
                    child: RoundedButton(
                      width: 150.0,
                      text: 'ok'.tr.toUpperCase(),
                      onPressed: () {
                        final form = _formKey.currentState;
                        if (form?.validate() ?? false) {
                          form?.save();
                          switch (widget.title) {
                            case 'gender':
                              widget.onValueChange({
                                'gender': activeGender == Gender.male
                                    ? 1
                                    : activeGender == Gender.female
                                        ? 2
                                        : 3
                              });
                              break;
                            case 'country':
                              widget.onValueChange(
                                  {'updated_country_code': activeCountry.code});
                              break;
                            case 'language':
                              Get.updateLocale(Locale(activeLanguage.code));
                              widget.onValueChange(
                                  {'updated_locale': activeLanguage.code});
                              break;
                            default:
                              break;
                          }
                        }
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getEditContent() {
    switch (widget.title) {
      case 'full_name':
        return TextFormField(
          initialValue: widget.user.userName,
          keyboardType: TextInputType.name,
          onSaved: (value) =>
              widget.onValueChange({'updated_user_name': value}),
          style: AppTheme.title2,
          decoration: AppTheme.textFieldDecoration.copyWith(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            final fullname = value?.trim().split(' ');
            return fullname?.length.isLowerThan(2) ?? true
                ? 'error_name'.tr
                : null;
          },
        );
      case 'email_address':
        return TextFormField(
          initialValue: widget.user.email,
          keyboardType: TextInputType.emailAddress,
          onSaved: (value) =>
              widget.onValueChange({'updated_user_email': value}),
          style: AppTheme.title2,
          decoration: AppTheme.textFieldDecoration.copyWith(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          ),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => ((value?.isEmpty ?? true) ||
                  GetUtils.isEmail(value?.trim() ?? ''))
              ? null
              : 'error_email'.tr,
        );

      case 'gender':
        return Column(
          children: [
            GenderTile(
              value: describeEnum(Gender.female).tr,
              isActive: activeGender == Gender.female,
              onTap: () => setState(() {
                activeGender = Gender.female;
              }),
            ),
            const SizedBox(height: 10.0),
            GenderTile(
              value: describeEnum(Gender.male).tr,
              isActive: activeGender == Gender.male,
              onTap: () => setState(() {
                activeGender = Gender.male;
              }),
            ),
            GenderTile(
              value: describeEnum(Gender.other).tr,
              isActive: activeGender == Gender.other,
              onTap: () => setState(() {
                activeGender = Gender.other;
              }),
            ),
          ],
        );
      case 'country':
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final Country country = kCountries[index];
                return CountryTile(
                    country: country,
                    isActive: activeCountry == country,
                    onTap: () => setState(() {
                          activeCountry = country;
                        }));
              },
              itemCount: kCountries.length,
            ),
          ),
        );
      case 'language':
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final Language language = kLanguages[index];
                return LanguageTile(
                    language: language,
                    isActive: activeLanguage == language,
                    onTap: () => setState(() {
                          activeLanguage = language;
                        }));
              },
              itemCount: kLanguages.length,
            ),
          ),
        );
      default:
        return const SizedBox();
    }
  }
}

class GenderTile extends StatelessWidget {
  const GenderTile({
    Key? key,
    this.isActive = false,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive
              ? AppTheme.primaryColor.withOpacity(0.15)
              : AppTheme.whiteF8,
          border: isActive ? Border.all(color: AppTheme.primaryColor) : null,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value.tr,
                style: AppTheme.title.copyWith(
                    fontSize: 16.0,
                    color:
                        isActive ? AppTheme.primaryColor : AppTheme.darkColor),
              ),
              if (isActive)
                const Icon(
                  Icons.check,
                  color: AppTheme.primaryColor,
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CountryTile extends StatelessWidget {
  const CountryTile({
    Key? key,
    this.isActive = false,
    required this.country,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final Country country;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isActive
                ? AppTheme.primaryColor.withOpacity(0.15)
                : AppTheme.whiteF8,
            border: isActive ? Border.all(color: AppTheme.primaryColor) : null,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            child: Row(
              children: [
                Text(getCountryFlag(country.isoCode)),
                const SizedBox(width: 10.0),
                Text(
                  country.name,
                  style: AppTheme.title2,
                ),
                const Spacer(),
                if (isActive)
                  const Icon(
                    Icons.check,
                    color: AppTheme.primaryColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    Key? key,
    this.isActive = false,
    required this.language,
    required this.onTap,
  }) : super(key: key);

  final bool isActive;
  final Language language;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isActive
                ? AppTheme.primaryColor.withOpacity(0.15)
                : AppTheme.whiteF8,
            border: isActive ? Border.all(color: AppTheme.primaryColor) : null,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
            child: Row(
              children: [
                Text(
                  language.name,
                  style: AppTheme.title2,
                ),
                const Spacer(),
                if (isActive)
                  const Icon(
                    Icons.check,
                    color: AppTheme.primaryColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
