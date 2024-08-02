// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {
    Name name;
    Currencies currencies;
    Idd idd;
    List<String> capital;
    List<String> altSpellings;
    String region;
    String subregion;
    Languages languages;
    List<double> latlng;
    List<String> borders;
    double area;
    Maps maps;
    int population;
    Gini gini;
    String fifa;
    List<String> timezones;
    List<String> continents;
    Flags flags;
    String startOfWeek;
    CapitalInfo capitalInfo;

    Pais({
        required this.name,
        required this.currencies,
        required this.idd,
        required this.capital,
        required this.altSpellings,
        required this.region,
        required this.subregion,
        required this.languages,
        required this.latlng,
        required this.borders,
        required this.area,
        required this.maps,
        required this.population,
        required this.gini,
        required this.fifa,
        required this.timezones,
        required this.continents,
        required this.flags,
        required this.startOfWeek,
        required this.capitalInfo,
    });

    factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: Name.fromJson(json["name"]),
        currencies: Currencies.fromJson(json["currencies"]),
        idd: Idd.fromJson(json["idd"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: Languages.fromJson(json["languages"]),
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        area: json["area"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        gini: Gini.fromJson(json["gini"]),
        fifa: json["fifa"],
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "currencies": currencies.toJson(),
        "idd": idd.toJson(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages.toJson(),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "borders": List<dynamic>.from(borders.map((x) => x)),
        "area": area,
        "maps": maps.toJson(),
        "population": population,
        "gini": gini.toJson(),
        "fifa": fifa,
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toJson(),
    };
}

class CapitalInfo {
    List<double> latlng;

    CapitalInfo({
        required this.latlng,
    });

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
    };
}

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

class Flags {
    String png;
    String svg;
    String alt;

    Flags({
        required this.png,
        required this.svg,
        required this.alt,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

    Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}

class Gini {
    double the2017;

    Gini({
        required this.the2017,
    });

    factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2017: json["2017"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "2017": the2017,
    };
}

class Idd {
    String root;
    List<String> suffixes;

    Idd({
        required this.root,
        required this.suffixes,
    });

    factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: List<String>.from(json["suffixes"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
    };
}

class Languages {
    String spa;

    Languages({
        required this.spa,
    });

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
    );

    Map<String, dynamic> toJson() => {
        "spa": spa,
    };
}

class Maps {
    String googleMaps;
    String openStreetMaps;

    Maps({
        required this.googleMaps,
        required this.openStreetMaps,
    });

    factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}

class Name {
    String common;
    String official;
    NativeName nativeName;

    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromJson(json["nativeName"]),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
    };
}

class NativeName {
    Spa spa;

    NativeName({
        required this.spa,
    });

    factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Spa.fromJson(json["spa"]),
    );

    Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
    };
}

class Spa {
    String official;
    String common;

    Spa({
        required this.official,
        required this.common,
    });

    factory Spa.fromJson(Map<String, dynamic> json) => Spa(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}
