import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taxiye_passenger/core/enums/common_enums.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
    required this.onTap,
  }) : super(key: key);

  final Transaction transaction;
  final VoidCallback onTap;

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
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              transaction.type?.toLowerCase() ==
                      describeEnum(TransactionType.debited)
                  ? const Icon(
                      Icons.arrow_upward,
                      color: AppTheme.redColor,
                    )
                  : const Icon(
                      Icons.arrow_downward,
                      color: AppTheme.greenColor,
                    ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.transactionDate ?? '',
                    style: AppTheme.title.copyWith(
                      fontSize: 14.0,
                      color: AppTheme.darkTextColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    transaction.transactionTime ?? '',
                    style: AppTheme.body.copyWith(
                      fontSize: 12.0,
                      color: AppTheme.greyColor,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      NumberFormat("###,###.00").format(transaction.amount) +
                          " Birr",
                      style: AppTheme.title.copyWith(
                        fontSize: 14.0,
                        color: AppTheme.darkTextColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      transaction.comment ?? '',
                      style: AppTheme.body.copyWith(
                        fontSize: 12.0,
                        color: AppTheme.greyColor,
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
