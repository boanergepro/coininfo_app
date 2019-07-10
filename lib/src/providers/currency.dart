import 'package:flutter/material.dart';
import 'package:coininfo/src/models/currency.dart';
import 'package:http/http.dart' as http;
import 'package:coininfo/src/api/end_points.dart';
import 'dart:convert';

class CurrencyProvider with ChangeNotifier {
  List<Currency> _currencies;

  Future<int> loadCurrencies() async {
    final response = await http.get(ALL_CURRENCIES);
    switch (response.statusCode) {
      case 200:
        final results = Map<String, dynamic>.from(json.decode(response.body));
        final data = List<Map<String, dynamic>>.from(results['data']);
        _currencies = data.map((item) => Currency.fromJson(item)).toList();
        return 200;
      default:
        return 404;
    }
  }

  List<Currency> get currencies => _currencies;
}
