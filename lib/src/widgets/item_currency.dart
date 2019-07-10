import 'package:flutter/material.dart';
import 'package:coininfo/src/providers/currency.dart';
import 'package:coininfo/src/utils/parce_url_icon.dart';
import 'package:coininfo/src/utils/parce_number.dart';

Widget itemCurrency(
    BuildContext context, int index, CurrencyProvider currencyState) {
  return Container(
    padding: EdgeInsets.only(
      left: 5,
      top: 2.5,
      right: 5,
      bottom: 2.5,
    ),
    child: Card(
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 10,
              child: Row(
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  // Icon and symbol currency
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Spacer(flex: 1),
                          Expanded(
                            flex: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                    parceUrlIcon(
                                      currencyState.currencies[index].symbol
                                          .toLowerCase(),
                                    ),
                                  ),
                                ),
                                Text(currencyState.currencies[index].symbol),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                  // Name currency
                  Expanded(
                    flex: 8,
                    child: Text(parceNumberVolume(double.parse(currencyState.currencies[index].volumeUsd24Hr).round().toString()),
                      style: TextStyle(
                        fontFamily: 'Lato',
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    ),
  );
}
