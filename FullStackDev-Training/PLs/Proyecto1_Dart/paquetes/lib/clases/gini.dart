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
