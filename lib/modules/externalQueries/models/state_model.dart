import 'dart:convert';

class StateModel {
  final String value;
  final String label;

  StateModel({
    required this.value,
    required this.label,
  });

  factory StateModel.fromMap(Map<String, dynamic> map) {
    return StateModel(
      value: map['sigla'],
      label: map['nome'],
    );
  }

  factory StateModel.fromJson(String source) =>
      StateModel.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'label': label,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'StateModel(value: $value, label: $label)';
}
