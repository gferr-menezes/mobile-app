import 'dart:convert';

class CityModel {
  String label;

  CityModel({
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return {
      'label': label,
    };
  }

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      label: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source));
}
