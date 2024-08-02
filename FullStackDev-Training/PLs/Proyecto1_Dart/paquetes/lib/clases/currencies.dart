class Currencies {
    Clp clp;

    Currencies({
        required this.clp,
    });

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        clp: Clp.fromJson(json["CLP"]),
    );

    Map<String, dynamic> toJson() => {
        "CLP": clp.toJson(),
    };
}

class Clp {
    String name;
    String symbol;

    Clp({
        required this.name,
        required this.symbol,
    });

    factory Clp.fromJson(Map<String, dynamic> json) => Clp(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
    };
}