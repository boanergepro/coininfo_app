import 'package:flutter/material.dart';
//import 'package:web_socket_channel/io.dart';
import 'package:provider/provider.dart';
import 'package:coininfo/src/providers/currency.dart';

class HomeScreen extends StatelessWidget {
  static final routerName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    //final channel = IOWebSocketChannel.connect('wss://ws.coincap.io/prices?assets=ALL');
    final currencyApp = Provider.of<CurrencyProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('CoinInfo'),
      ),
      body: RefreshIndicator(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(currencyApp.currencies[index].name),
            );
          },
          separatorBuilder: (context, int) => Divider(),
          itemCount: currencyApp.currencies.length,
        ),
        onRefresh: () async {},
      ),
    );
  }
}
