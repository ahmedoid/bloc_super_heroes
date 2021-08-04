import 'package:bloc_super_heroes/model/super_hero.dart';
import 'package:flutter/material.dart';

class SuperHeroResult extends StatelessWidget {
  const SuperHeroResult({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List<SuperHero> list;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.35),
        ),
        itemBuilder: (context, index) {
          var hero = list[index];
          return Card(
            child: Column(
              children: [
                Image.network(
                  hero.images.large!,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(hero.name),
                )
              ],
            ),
          );
        });
  }
}
