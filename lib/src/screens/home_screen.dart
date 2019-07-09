import 'package:flutter/material.dart';
//import 'package:web_socket_channel/io.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final channel = IOWebSocketChannel.connect('wss://ws.coincap.io/prices?assets=ALL');

    return Scaffold(
      appBar: AppBar(
        title: Text('CoinInfo'),
      ),
      body: RefreshIndicator(
        child: ListView.separated(
          itemBuilder: null,
          separatorBuilder: (context, int) => Divider(),
          itemCount: null,
        ),
        onRefresh: () async {},
      ),
    );
  }
}
