import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/home_controller.dart';
import 'package:taxiye_passenger/ui/widgets/rounded_button.dart';
import 'package:taxiye_passenger/utils/constants.dart';

class ConfirmPlace extends StatefulWidget {
  const ConfirmPlace({Key? key}) : super(key: key);

  @override
  State<ConfirmPlace> createState() => _ConfirmPlaceState();
}

class _ConfirmPlaceState extends State<ConfirmPlace> {
  HomeController controller = Get.find();
  TextEditingController labelController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late List<AddressLabel> addressLabels;
  late AddressLabel activeAddressLabel;

  @override
  void initState() {
    addressLabels = [
      const AddressLabel(title: 'home', icon: Icons.home_outlined),
      const AddressLabel(title: 'work', icon: Icons.work_outline_outlined),
      const AddressLabel(title: 'other', icon: Icons.location_on_outlined),
    ];

    activeAddressLabel = addressLabels.first;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 55.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final AddressLabel addressLabel = addressLabels[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
                      child: AddressLabelTile(
                        addressLabel: addressLabel,
                        isActive: activeAddressLabel == addressLabel,
                        onTap: () => setState(() {
                          activeAddressLabel = addressLabel;
                        }),
                      ),
                    );
                  },
                  itemCount: addressLabels.length,
                ),
              ),
              const SizedBox(height: 16.0),
              if (activeAddressLabel.title == 'other')
                Column(
                  children: [
                    TextFormField(
                      controller: labelController,
                      keyboardType: TextInputType.text,
                      style: AppTheme.title2,
                      decoration: AppTheme.textFieldDecoration.copyWith(
                        hintText: 'address_label_hint'.tr,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 12.0),
                        hintStyle: AppTheme.subtitle.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w600),
                      ),
                      validator: (value) => value?.trim().isEmpty ?? true
                          ? 'error_label'.tr
                          : null,
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              TextField(
                controller:
                    controller.focusedSearchLocation == LocationType.pickUp
                        ? controller.pickUpSearchController
                        : controller.dropOffSearchController,
                keyboardType: TextInputType.streetAddress,
                style: AppTheme.title2,
                enabled: false,
                decoration: AppTheme.textFieldDecoration.copyWith(
                  hintText: 'address_name'.tr,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 12.0),
                  hintStyle: AppTheme.subtitle
                      .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20.0),
              RoundedButton(
                  text: 'confirm'.tr,
                  onPressed: () {
                    // Todo: on Confirm address
                    final form = _formKey.currentState;
                    if (form?.validate() ?? false) {
                      form?.save();
                      controller.addNewPlace(activeAddressLabel.title != 'other'
                          ? activeAddressLabel.title
                          : labelController.text);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class AddressLabelTile extends StatelessWidget {
  const AddressLabelTile({
    Key? key,
    required this.addressLabel,
    required this.onTap,
    required this.isActive,
  }) : super(key: key);

  final AddressLabel addressLabel;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? AppTheme.primaryColor : AppTheme.lightSilverColor,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                addressLabel.icon,
                color: isActive ? Colors.white : AppTheme.darkTextColor,
              ),
              const SizedBox(width: 8.0),
              Text(
                addressLabel.title.tr,
                style: AppTheme.body.copyWith(
                  fontWeight: FontWeight.w600,
                  color: isActive ? Colors.white : AppTheme.darkTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddressLabel {
  const AddressLabel({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;
}
