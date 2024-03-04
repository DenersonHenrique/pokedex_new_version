import 'package:equatable/equatable.dart';

class EvolutionEntity extends Equatable {
  final String? number;
  final String? name;

  const EvolutionEntity({
    required this.number,
    required this.name,
  });

  @override
  List<Object?> get props => [number, name];
}
