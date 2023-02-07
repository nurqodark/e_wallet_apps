import 'package:e_wallet_apps/model/transaction.dart';
import 'package:e_wallet_apps/screen/widget/item_transaction.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            bottom: 10,
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              Text(
                "Histori Transaksi",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: transactionList.length,
            itemBuilder: (context, index) {
              return ItemTransaction(
                transaction: transactionList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
