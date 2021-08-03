import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/constants.dart';
import 'package:get/get.dart';

class UpdatePaymentMethod extends StatelessWidget {
  const UpdatePaymentMethod({
    Key? key,
    required this.payment,
  }) : super(key: key);

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.bottomSheetDecoration,
      child: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              (payment.name ?? '').tr,
              style: AppTheme.title.copyWith(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
            ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final UpdateOption updateOption = UpdateOption.values[index];
                return UpdatePaymentTile(
                    updateOption: updateOption,
                    onSelectOption: () => {print(describeEnum(updateOption))});
              },
              itemCount: UpdateOption.values.length,
            )
          ],
        ),
      ),
    );
  }
}

class UpdatePaymentTile extends StatelessWidget {
  const UpdatePaymentTile({
    Key? key,
    required this.updateOption,
    required this.onSelectOption,
  }) : super(key: key);

  final UpdateOption updateOption;
  final VoidCallback onSelectOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onSelectOption,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
              child: Text(
                describeEnum(updateOption).tr,
                style: AppTheme.title.copyWith(fontSize: 16.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
