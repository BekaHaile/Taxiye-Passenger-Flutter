import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/wallet/components/transaction_tile.dart';
import 'package:get/get.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({
    Key? key,
    required this.transactions,
    required this.onTapItem,
    this.scrollController,
  }) : super(key: key);

  final List<Transaction> transactions;
  final ScrollController? scrollController;
  final Function(Transaction selectedTransaction) onTapItem;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: getDateOrderedTransactions(
            transactions: transactions,
            onTapItem: onTapItem,
            scrollController: scrollController),
      ),
    );
  }
}

List<Widget> getDateOrderedTransactions({
  required List<Transaction> transactions,
  required Function(Transaction selectedTransaction) onTapItem,
  ScrollController? scrollController,
}) {
  if (transactions.isNotEmpty) {
    DateTime? date = transactions[0].loggedOn;
    Map<DateTime, List<Transaction>> dateList = {};

    // group transactions by date
    for (var transaction in transactions) {
      if (dateList[transaction.loggedOn] == null) {
        dateList[transaction.loggedOn ?? DateTime.now()] = [];
      }
      if (transaction.loggedOn != date) {
        date = transaction.loggedOn;
      }
      dateList[date]!.add(transaction);
    }
    List<Widget> transactionTileList = [];
    dateList.forEach((key, value) {
      transactionTileList.add(getDailyTransactionList(
        key,
        value,
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
