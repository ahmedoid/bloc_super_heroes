import 'package:bloc_super_heroes/model/super_hero.dart';
import 'package:dio/dio.dart';

abstract class ISuperHeroRepository {
  Future<List<SuperHero>> getSuperheros();
}

class SuperHeroRepository implements ISuperHeroRepository {
  final _dioClient = Dio();
  final url =
      'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json';

  @override
  Future<List<SuperHero>> getSuperheros() async {
    try {
      final result = await _dioClient.get<List>(url);
      if (result.statusCode == 200) {
        var list = (result.data as List).toList().map<SuperHero>((i) {
          return SuperHero.fromJson(i as Map<String, dynamic>);
        }).toList();
        return list;
      } else {
        throw Exception();
      }
    } catch (_) {
      print(_.toString());
      throw Exception();
    }
  }
}
