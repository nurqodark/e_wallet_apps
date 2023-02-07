// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_wallet_apps/model/transaction.dart';

class ItemTransaction extends StatelessWidget {
  const ItemTransaction({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade500,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 132, 187, 232),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Center(
                child: Text(
                  transaction.to
                      .split(" ")
                      .map((e) => e.substring(0, 1))
                      .toList()
                      .join(),
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Text(
                    transaction.to,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  transaction.date,
                  style: TextStyle(
                    color: Colors.blue.shade500,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 8,
                ),
                child: Text(
                  "~Rp ${transaction.amount}",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blue.shade500,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                transaction.description,
                style: TextStyle(
                  color: Colors.blue.shade500,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
