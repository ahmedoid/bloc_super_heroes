part of 'super_hero_bloc.dart';

abstract class SuperHeroEvent extends Equatable {
  const SuperHeroEvent();
}

class FetchSuperHero extends SuperHeroEvent {
  @override
  List<Object?> get props => [];
}
