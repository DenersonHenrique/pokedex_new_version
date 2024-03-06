import 'package:equatable/equatable.dart';

import 'evolution_entity.dart';

class PokemonEntity extends Equatable {
  final int? id;
  final String? number;
  final String? name;
  final String? img;
  final List<String>? type;
  final String? height;
  final String? weight;
  final String? candy;
  final int? candyCount;
  final String? egg;
  final double? spawnChance;
  final double? avgSpawns;
  final String? spawnTime;
  final List<double>? multipliers;
  final List<String>? weaknesses;
  final List<EvolutionEntity>? prevEvolution;
  final List<EvolutionEntity>? nextEvolution;

  const PokemonEntity({
    required this.id,
    required this.number,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.egg,
    required this.spawnChance,
    required this.avgSpawns,
    required this.spawnTime,
    required this.multipliers,
    required this.weaknesses,
    this.prevEvolution,
    this.nextEvolution,
  });

  PokemonEntity copyWith({
    int? id,
    String? number,
    String? name,
    String? img,
    List<String>? type,
    String? height,
    String? weight,
    String? candy,
    int? candyCount,
    String? egg,
    double? spawnChance,
    double? avgSpawns,
    String? spawnTime,
    List<double>? multipliers,
    List<String>? weaknesses,
    List<EvolutionEntity>? prevEvolution,
    List<EvolutionEntity>? nextEvolution,
  }) {
    return PokemonEntity(
      id: id ?? this.id,
      number: number ?? this.number,
      name: name ?? this.name,
      img: img ?? this.img,
      type: type ?? this.type,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      candy: candy ?? this.candy,
      candyCount: candyCount ?? this.candyCount,
      egg: egg ?? this.egg,
      spawnChance: spawnChance ?? this.spawnChance,
      avgSpawns: avgSpawns ?? this.avgSpawns,
      spawnTime: spawnTime ?? this.spawnTime,
      multipliers: multipliers ?? this.multipliers,
      weaknesses: weaknesses ?? this.weaknesses,
      prevEvolution: prevEvolution ?? this.prevEvolution,
      nextEvolution: nextEvolution ?? this.nextEvolution,
    );
  }

  @override
  List<Object?> get props => [
        id,
        number,
        name,
        img,
        type,
        height,
        weight,
        candy,
        candyCount,
        egg,
        spawnChance,
        avgSpawns,
        multipliers,
        weaknesses,
        prevEvolution,
        nextEvolution,
      ];
}
