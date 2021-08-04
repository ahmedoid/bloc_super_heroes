part of 'super_hero_bloc.dart';

abstract class SuperHeroState extends Equatable {
  const SuperHeroState();
}

class SuperHeroInitial extends SuperHeroState {
  @override
  List<Object> get props => [];
}

class SuperHeroLoading extends SuperHeroState {
  @override
  List<Object> get props => [];
}

class SuperHeroFailure extends SuperHeroState {
  @override
  List<Object> get props => [];
}

class SuperHeroSuccess extends SuperHeroState {
  const SuperHeroSuccess(this.superHeroes);

  final List<SuperHero> superHeroes;

  @override
  List<Object> get props => [superHeroes];
}
