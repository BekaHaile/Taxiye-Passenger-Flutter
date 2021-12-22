import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/wallet/components/transaction_tile.dart';
import 'package:get/get.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
    required this.transactions,
    required this.currency,
    required this.onTapItem,
    this.scrollController,
  }) : super(key: key);

  final List<Transaction> transactions;
  final String currency;
  final ScrollController? scrollController;
  final Function(Transaction selectedTransaction) onTapItem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: getDateOrderedTransactions(
            transactions: transactions,
            currency: currency,
            onTapItem: onTapItem,
            scrollController: scrollController),
      ),
    );
  }
}

List<Widget> getDateOrderedTransactions({
  required List<Transaction> transactions,
  required String currency,
  required Function(Transaction selectedTransaction) onTapItem,
  ScrollController? scrollController,
}) {
  if (transactions.isNotEmpty) {
    Map<DateTime, List<Transaction>> dateList = {};

    // group transactions by date
    for (var transaction in transactions) {
      if (transaction.loggedOn != null) {
        DateTime date = DateTime(transaction.loggedOn!.year,
            transaction.loggedOn!.month, transaction.loggedOn!.day);
        if (dateList.containsKey(date)) {
          dateList[date]!.add(transaction);
        } else {
          dateList[date] = [transaction];
        }
      }
    }
    List<Widget> transactionTileList = [];
    dateList.forEach((key, value) {
      transactionTileList.add(getDailyTransactionList(
        key,
        value,
        currency,
        scrollController,
        onTapItem,
      ));
    });
    return transactionTileList;
  } else {
    return [const SizedBox()];
  }
}

getDailyTransactionList(
  DateTime date,
  List<Transaction> transactions,
  String currency,
  ScrollController? scrollController,
  Function(Transaction selectedTransaction) onTapItem,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 20),
      Text(
        getDateText(date),
      ),
      // const SizedBox(height: 30),
      ListView.separated(
        shrinkWrap: true,
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          final Transaction transaction = transactions[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
            child: TransactionTile(
              transaction: transaction,
              currency: currency,
              onTap: () => onTapItem(transaction),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 15);
        },
        itemCount: transactions.length,
      ),
    ],
  );
}

String getDateText(DateTime date) {
  int days = DateTime(date.year, date.month, date.day)
      .difference(DateTime.now())
      .inDays;
  return days == 0
      ? 'today'.tr
      : days == -1
          ? 'yesterday'.tr
          : DateFormat.yMMMd().format(date);
}
