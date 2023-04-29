// Name: pokeclass.dart
// Details: constructs a pokemon object from json
//          For use in pokedex.dart

class Pokemon {
  final String name;
  final String id;
  final String imageurl;
  final List<dynamic> typeofpokemon;
  final String category;
  final String xdescription;
  final int hp;
  final int attack;
  final int defense;
  final int special_attack;
  final int special_defense;
  final int speed;
  final int total;

  const Pokemon({
    required this.name,
    required this.id,
    required this.imageurl,
    required this.typeofpokemon,
    required this.category,
    required this.xdescription,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.special_attack,
    required this.special_defense,
    required this.speed,
    required this.total,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'] as String,
      id: json['id'] as String,
      imageurl: json["imageurl"] as String,
      category: json["category"],
      typeofpokemon: json['typeofpokemon'] as List<dynamic>,
      xdescription: json['xdescription'],
      hp: json['hp'],
      attack: json['attack'],
      defense: json['defense'],
      special_attack: json['special_attack'],
      special_defense: json['special_defense'],
      speed: json['speed'],
      total: json['total'],
    );
  }
}
