class Currency {
  String _id;
  String _rank;
  String _symbol;
  String _name;
  String _changePercent24Hr;
  String _priceUsd;
  String _volumeUsd24Hr;

  // constructor
  Currency.fromJson(Map<dynamic, dynamic> json) {
    _id = json['id'] ?? '';
    _rank = json['rank'] ?? '';
    _symbol = json['symbol'] ?? '';
    _name = json['name'] ?? '';
    _changePercent24Hr = json['changePercent24Hr'] ?? '';
    _priceUsd = json['priceUsd'] ?? '';
    _volumeUsd24Hr = json['volumeUsd24Hr'] ?? '';
  }

// getters
  String get id => _id;

  String get rank => _rank;

  String get symbol => _symbol;

  String get name => _name;

  String get changePercent24Hr => _changePercent24Hr;

  String get priceUsd => _priceUsd;

  String get volumeUsd24Hr => _volumeUsd24Hr;
}
