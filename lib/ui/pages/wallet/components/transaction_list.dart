import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/ui/pages/wallet/components/transaction_tile.dart';

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
    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
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
      itemCount: transactions.length,
    );
  }
}
