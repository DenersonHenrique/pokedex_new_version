import 'dart:convert';

import '../../domain/entity/pokemon_entity.dart';
import 'evolution_model.dart';

class PokemonModel extends PokemonEntity {
  const PokemonModel({
    required super.id,
    required super.number,
    required super.name,
    required super.img,
    required super.type,
    required super.height,
    required super.weight,
    required super.candy,
    required super.candyCount,
    required super.egg,
    required super.spawnChance,
    required super.avgSpawns,
    required super.spawnTime,
    super.multipliers,
    required super.weaknesses,
    List<EvolutionModel>? super.prevEvolution,
    List<EvolutionModel>? super.nextEvolution,
  });

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'],
      number: map['num'],
      name: map['name'],
      img: map['img'],
      type: (map['type'] as List<dynamic>).cast<String>(),
      height: map['height'],
      weight: map['weight'],
      candy: map['candy'],
      candyCount: map['candyCount'],
      egg: map['egg'],
      spawnChance: map['spawnChance'],
      avgSpawns: map['avgSpawns'],
      spawnTime: map['spawnTime'],
      multipliers: (map['multipliers'] != null
          ? (map['multipliers'] as List<dynamic>).cast<double>()
          : []),
      weaknesses: (map['weaknesses'] as List<dynamic>).cast<String>(),
      prevEvolution: map['prevEvolution'],
      nextEvolution: map['nextEvolution'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['num'] = number;
    data['name'] = name;
    data['img'] = img;
    data['type'] = type;
    data['height'] = height;
    data['weight'] = weight;
    data['candy'] = candy;
    data['candyCount'] = candyCount;
    data['egg'] = egg;
    data['spawnChance'] = spawnChance;
    data['avgSpawns'] = avgSpawns;
    data['spawnTime'] = spawnTime;
    data['multipliers'] = multipliers;
    data['weaknesses'] = weaknesses;
    data['prevEvolution'] = prevEvolution;
    data['nextEvolution'] = nextEvolution;
    return data;
  }

  factory PokemonModel.fromEntity(PokemonEntity entity) => PokemonModel(
        id: entity.id,
        number: entity.number,
        name: entity.name,
        img: entity.img,
        type: entity.type,
        height: entity.height,
        weight: entity.weight,
        candy: entity.candy,
        candyCount: entity.candyCount,
        egg: entity.egg,
        spawnChance: entity.spawnChance,
        avgSpawns: entity.avgSpawns,
        spawnTime: entity.spawnTime,
        multipliers: entity.multipliers,
        weaknesses: entity.weaknesses,
        prevEvolution: entity.prevEvolution
            ?.map(EvolutionModel.fromEntity)
            .toList(),
        nextEvolution: entity.nextEvolution
            ?.map(EvolutionModel.fromEntity)
            .toList(),
      );

  Map<String, dynamic> get toMap => {
        'id': id,
        'num': number,
        'name': name,
        'img': img,
        'type': type,
        'height': height,
        'weight': weight,
        'candy': candy,
        'candyCount': candyCount,
        'egg': egg,
        'spawnChance': spawnChance,
        'avgSpawns': avgSpawns,
        'spawnTime': spawnTime,
        'multipliers': multipliers,
        'weaknesses': weaknesses,
        'prevEvolution': prevEvolution,
        'nextEvolution': nextEvolution,
      };

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source));
}
