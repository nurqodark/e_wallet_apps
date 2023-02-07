// ignore_for_file: prefer_const_constructors

import 'package:e_wallet_apps/screen/widget/item_transaction.dart';
import 'package:e_wallet_apps/screen/widget/menu_box.dart';
import 'package:e_wallet_apps/screen/widget/transaction_detail.dart';
import 'package:flutter/material.dart';
import 'package:e_wallet_apps/model/transaction.dart';

class ItemHeader extends StatefulWidget {
  const ItemHeader({super.key});

  @override
  State<ItemHeader> createState() => _ItemHeaderState();
}

class _ItemHeaderState extends State<ItemHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=11',
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Devi Santika",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Icon(
                          Icons.brightness_1,
                          size: 8,
                          color: Colors.redAccent,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "Saldo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Rp, 2.000.000.000.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuBox(
                  icon: Icons.send_rounded,
                  text: "Kirim",
                ),
                MenuBox(
                  icon: Icons.account_balance_wallet,
                  text: "Terima",
                ),
                MenuBox(
                  icon: Icons.payment,
                  text: "Bayar",
                ),
                MenuBox(
                  icon: Icons.more_horiz,
                  text: "Lainnya",
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 25,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Transaksi Terakhir",
                            style: TextStyle(
                              color: Colors.blue.shade500,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return ItemDetail();
                              },
                            );
                          },
                          child: Text(
                            "Lihat Semua",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue.shade500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ItemTransaction(
                          transaction: transactionList[index],
                        );
                      },
                      itemCount: transactionList.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
