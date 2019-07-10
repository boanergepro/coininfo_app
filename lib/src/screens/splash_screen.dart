import 'package:flutter/material.dart';
import 'package:coininfo/src/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:coininfo/src/providers/currency.dart';

class SplashScreen extends StatelessWidget {
  static final routerName = '/';

  @override
  Widget build(BuildContext context) {
    final currencyApp = Provider.of<CurrencyProvider>(context);

    return FutureBuilder(
      future: currencyApp.loadCurrencies(),
      builder: (context, snapshot) {
        print(snapshot.data.toString());
        if (snapshot.connectionState == ConnectionState.done) {
          return HomeScreen();
        }
        if (snapshot.data.toString() != '200') {
          errorPage(context);
        }
        return scaffold(context);
      },
    );
  }
}

Widget errorPage(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    body: Center(
      child: Column(
        children: <Widget>[
          Text(
            'Error de conexion',
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 50.0,
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SplashScreen.routerName);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.refresh),
                Text('Refresh'),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget scaffold(BuildContext context) {
  return Scaffold(
    backgroundColor: Theme.of(context).backgroundColor,
    body: Center(
      child: Text(
        'CoinInfo',
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 50.0,
        ),
      ),
    ),
  );
}
