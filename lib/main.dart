import 'package:flutter/material.dart';

import 'app.dart';
import 'repository/superhero_repository.dart';

void main() {
  runApp(SuperHeroesApp(superHeroRepository: SuperHeroRepository()));
}
