import 'package:bloc_super_heroes/repository/superhero_repository.dart';
import 'package:bloc_super_heroes/super_heros/bloc/super_hero_bloc.dart';
import 'package:bloc_super_heroes/super_heros/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SuperHeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuperHeroBloc(context.read<SuperHeroRepository>())
        ..add(FetchSuperHero()),
      child: SuperHeroView(),
    );
  }
}

class SuperHeroView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Super Heroes'),
      ),
      body: BlocBuilder<SuperHeroBloc, SuperHeroState>(
        builder: (context, state) {
          if (state is SuperHeroLoading) {
            return const Center(child: SuperHeroesLoading());
          }
          if (state is SuperHeroFailure) {
            return const SuperHeroError();
          }
          if (state is SuperHeroSuccess) {
            var list = state.superHeroes;
            return SuperHeroResult(list: list);
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
