import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_super_heroes/model/super_hero.dart';
import 'package:bloc_super_heroes/repository/superhero_repository.dart';
import 'package:equatable/equatable.dart';

part 'super_hero_event.dart';
part 'super_hero_state.dart';

class SuperHeroBloc extends Bloc<SuperHeroEvent, SuperHeroState> {
  SuperHeroBloc(this._superHeroRepository) : super(SuperHeroInitial());
  final SuperHeroRepository _superHeroRepository;

  @override
  Stream<SuperHeroState> mapEventToState(
    SuperHeroEvent event,
  ) async* {
    if (event is FetchSuperHero) {
      try {
        yield SuperHeroLoading();
        var superHeroesList = await _superHeroRepository.getSuperheros();
        yield SuperHeroSuccess(superHeroesList);
      } catch (_) {
        yield SuperHeroFailure();
      }
    }
  }
}
