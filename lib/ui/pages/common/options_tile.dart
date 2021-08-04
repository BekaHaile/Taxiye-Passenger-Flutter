import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class OptionTile extends StatefulWidget {
  const OptionTile({
    Key? key,
    required this.option,
    required this.onTap,
  }) : super(key: key);

  final Option option;
  final Function(Option selectedOption) onTap;

  @override
  State<OptionTile> createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
      leading: Container(
        width: 40.0,
        height: 40.0,
        decoration: const BoxDecoration(
          color: AppTheme.lightSilverColor,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Icon(
          widget.option.leadingIcon,
          color: AppTheme.darkTextColor,
        ),
      ),
      title: Text(
        widget.option.title.tr,
        style: AppTheme.title.copyWith(fontSize: 16.0),
      ),
      subtitle: Text(
        widget.option.subtitle.tr,
        style: AppTheme.subtitle.copyWith(fontSize: 12.0),
      ),
      trailing: widget.option.toggleValue != null
          ? Switch(
              value: widget.option.toggleValue ?? false,
              onChanged: (value) => setState(() {
                widget.option.toggleValue = value;
              }),
              activeColor: AppTheme.yellowColor,
            )
          : const Icon(
              Icons.chevron_right,
              color: AppTheme.darkTextColor,
            ),
    );
  }
}
