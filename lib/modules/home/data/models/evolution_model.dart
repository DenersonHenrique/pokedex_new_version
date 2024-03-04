import 'dart:convert';

import '../../domain/entity/evolution_entity.dart';

class EvolutionModel extends EvolutionEntity {
  const EvolutionModel({
    required super.number,
    required super.name,
  });

  factory EvolutionModel.fromMap(Map<String, dynamic> map) => EvolutionModel(
        number: map['num'],
        name: map['name'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['num'] = number;
    data['name'] = name;
    return data;
  }

  factory EvolutionModel.fromEntity(EvolutionEntity entity) => EvolutionModel(
        number: entity.number,
        name: entity.name,
      );

  Map<String, dynamic> get toMap => {
        'num': number,
        'name': name,
      };

  factory EvolutionModel.fromJson(String source) =>
      EvolutionModel.fromMap(json.decode(source));
}
