import 'package:flutter/material.dart';
import 'package:coininfo/src/providers/currency.dart';
import 'package:coininfo/src/widgets/item_currency.dart';

Widget headerListCurrency(BuildContext context, int index, CurrencyProvider currencyState) {
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          left: 5,
          top: 2.5,
          right: 5,
          bottom: 2.5,
        ),
        child: Card(
          child: Container(
            height: 30,
            child: Row(
              children: <Widget>[
                Spacer(flex: 1,),
                Expanded(
                  flex: 7,
                  child: Text('Coin', style: TextStyle(fontFamily: 'Lato'),),
                ),
                Expanded(
                  flex: 7,
                  child: Text('Volume', style: TextStyle(fontFamily: 'Lato'),),
                ),
                Expanded(
                  flex: 7,
                  child: Text('Price', style: TextStyle(fontFamily: 'Lato'),),
                ),
                Expanded(
                  flex: 7,
                  child: Text('Alert', style: TextStyle(fontFamily: 'Lato'),),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
        ),
      ),
      itemCurrency(context, index, currencyState)
    ],
  );
}