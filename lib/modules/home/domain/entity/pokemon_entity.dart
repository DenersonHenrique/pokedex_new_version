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
