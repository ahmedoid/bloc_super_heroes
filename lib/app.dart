import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'repository/superhero_repository.dart';
import 'super_heros/view/super_hero_page.dart';

class SuperHeroesApp extends StatelessWidget {
  const SuperHeroesApp(
      {Key? key, required SuperHeroRepository superHeroRepository})
      : _superHeroRepository = superHeroRepository,
        super(key: key);

  final SuperHeroRepository _superHeroRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _superHeroRepository,
      child: SuperHeroesAppView(),
    );
  }
}

class SuperHeroesAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
      ),
      home: SuperHeroPage(),
    );
  }
}
