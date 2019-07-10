import 'package:flutter/material.dart';
import 'package:coininfo/src/routes.dart';
import 'package:provider/provider.dart';
import 'package:coininfo/src/providers/currency.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) =>CurrencyProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        theme: ThemeData.dark(),
      ),
    );
  }
}
