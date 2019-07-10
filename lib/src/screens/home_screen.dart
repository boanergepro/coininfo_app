import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coininfo/src/providers/currency.dart';
import 'package:coininfo/src/widgets/item_currency.dart';
import 'package:coininfo/src/widgets/header_list_currency.dart';

class HomeScreen extends StatelessWidget {
  static final routerName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    //final channel = IOWebSocketChannel.connect('wss://ws.coincap.io/prices?assets=ALL');
    final currencyState = Provider.of<CurrencyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('CoinInfo'),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: currencyState.currencies.length,
          itemBuilder: (context, index) {
            return index < 1
                ? headerListCurrency(context, index, currencyState)
                : itemCurrency(context, index, currencyState);
          },
        ),
        onRefresh: () async {},
      ),
    );
  }
}
