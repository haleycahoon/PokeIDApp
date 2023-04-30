// Name: habitat_confirm.dart
// Function: HabitatConfirm()
//
// This screen is where: The user may choose a habitat they wish to "explore".
//
// The user shall choose a habitat from a list.
// Before moving onto the "checklist" screen,
// The list will be selected
// and then  the list will be sent to the "habitat_checklist"

// ignore_for_file: non_constant_identifier_names

// HABITAT INFORMATION COMES FROM POKEAPI: https://pokeapi.co/api/v2/pokemon-habitat/1    (1,2,3)

import 'package:flutter/material.dart';
import 'package:pokedextest/util/checklist.dart';

List cave = [
  ["zubat", false],
  ["golbat", false],
  ["crobat", false],
  ["diglett", false],
  ["dugtrio", false],
  ["gastly", false],
  ["haunter", false],
  ["gengar", false],
  ["onix", false],
  ["steelix", false],
  ["misdreavus", false],
  ["dunsparce", false],
  ["swinub", false],
  ["piloswine", false],
  ["whismur", false],
  ["loudred", false],
  ["exploud", false],
  ["nosepass", false],
  ["sableye", false],
  ["mawile", false],
  ["lunatone", false],
  ["solrock", false],
  ["wynaut", false],
  ["wobbuffet", false],
  ["snorunt", false],
  ["glalie", false],
];
Color caveDark = const Color.fromARGB(255, 132, 132, 132);
Color caveLight = const Color.fromARGB(255, 188, 188, 188);

List forest = [
  ["caterpie", false],
  ["metapod", false],
  ["butterfree", false],
  ["weedle", false],
  ["kakuna", false],
  ["beedrill", false],
  ["pidgey", false],
  ["pidgeotto", false],
  ["pidgeot", false],
  ["paras", false],
  ["parasect", false],
  ["venonat", false],
  ["venomoth", false],
  ["bellsprout", false],
  ["weepinbell", false],
  ["victreebel", false],
  ["exeggcute", false],
  ["exeggutor", false],
  ["pinsir", false],
  ["hoothoot", false],
  ["noctowl", false],
  ["ledyba", false],
  ["ledian", false],
  ["spinarak", false],
  ["ariados", false],
  ["pichu", false],
  ["pikachu", false],
  ["raichu", false],
  ["togepi", false],
  ["togetic", false],
  ["natu", false],
  ["xatu", false],
  ["aipom", false],
  ["yanma", false],
  ["murkrow", false],
  ["pineco", false],
  ["forretress", false],
  ["heracross", false],
  ["sneasel", false],
  ["stantler", false],
  ["treecko", false],
  ["grovyle", false],
  ["sceptile", false],
  ["wurmple", false],
  ["silcoon", false],
  ["beautifly", false],
  ["cascoon", false],
  ["dustox", false],
  ["seedot", false],
  ["nuzleaf", false],
  ["shiftry", false],
  ["shroomish", false],
  ["breloom", false],
  ["slakoth", false],
  ["vigoroth", false],
  ["slaking", false],
  ["nincada", false],
  ["ninjask", false],
  ["shedinja", false],
  ["skitty", false],
  ["delcatty", false],
  ["volbeat", false],
  ["illumise", false],
  ["swablu", false],
  ["altaria", false],
  ["kecleon", false],
  ["duskull", false],
  ["dusclops", false],
  ["tropius", false],
  ["sudowoodo", false],
];
Color forestDark = Color.fromARGB(255, 114, 179, 116);
Color forestLight = const Color.fromARGB(255, 190, 254, 192);

List grassland = [
  ["bulbasaur", false],
  ["ivysaur", false],
  ["venusaur", false],
  ["rattata", false],
  ["raticate", false],
  ["ekans", false],
  ["arbok", false],
  ["nidoran-f", false],
  ["nidorina", false],
  ["nidoqueen", false],
  ["nidoran-m", false],
  ["nidorino", false],
  ["nidoking", false],
  ["vulpix", false],
  ["ninetales", false],
  ["oddish", false],
  ["gloom", false],
  ["vileplume", false],
  ["bellossom", false],
  ["growlithe", false],
  ["arcanine", false],
  ["ponyta", false],
  ["rapidash", false],
  ["farfetchd", false],
  ["doduo", false],
  ["dodrio", false],
  ["drowzee", false],
  ["hypno", false],
  ["lickitung", false],
  ["tangela", false],
  ["kangaskhan", false],
  ["scyther", false],
  ["tauros", false],
  ["chikorita", false],
  ["bayleef", false],
  ["meganium", false],
  ["cyndaquil", false],
  ["quilava", false],
  ["typhlosion", false],
  ["sentret", false],
  ["furret", false],
  ["igglybuff", false],
  ["jigglypuff", false],
  ["wigglytuff", false],
  ["mareep", false],
  ["flaaffy", false],
  ["ampharos", false],
  ["hoppip", false],
  ["skiploom", false],
  ["jumpluff", false],
  ["sunkern", false],
  ["sunflora", false],
  ["girafarig", false],
  ["elekid", false],
  ["electabuzz", false],
  ["miltank", false],
  ["torchic", false],
  ["combusken", false],
  ["blaziken", false],
  ["poochyena", false],
  ["mightyena", false],
  ["zigzagoon", false],
  ["linoone", false],
  ["taillow", false],
  ["swellow", false],
  ["electrike", false],
  ["manectric", false],
  ["plusle", false],
  ["minun", false],
  ["gulpin", false],
  ["swalot", false],
  ["zangoose", false],
  ["seviper", false],
  ["castform", false],
  ["scizor", false],
  ["roselia", false],
  ["chimecho", false],
];
Color grasslandDark = Color.fromARGB(255, 110, 184, 147);
Color grasslandLight = const Color.fromARGB(255, 180, 253, 216);

List mountain = [
  ["charmander", false],
  ["charmeleon", false],
  ["charizard", false],
  ["mankey", false],
  ["primeape", false],
  ["machop", false],
  ["machoke", false],
  ["machamp", false],
  ["geodude", false],
  ["graveler", false],
  ["golem", false],
  ["cubone", false],
  ["marowak", false],
  ["aerodactyl", false],
  ["cleffa", false],
  ["clefairy", false],
  ["clefable", false],
  ["gligar", false],
  ["shuckle", false],
  ["teddiursa", false],
  ["ursaring", false],
  ["slugma", false],
  ["magmar", false],
  ["delibird", false],
  ["magby", false],
  ["magcargo", false],
  ["larvitar", false],
  ["pupitar", false],
  ["tyranitar", false],
  ["makuhita", false],
  ["hariyama", false],
  ["aron", false],
  ["lairon", false],
  ["aggron", false],
  ["meditite", false],
  ["medicham", false],
  ["numel", false],
  ["camerupt", false],
  ["torkoal", false],
  ["spoink", false],
  ["grumpig", false],
  ["spinda", false],
  ["absol", false],
  ["snorlax", false],
];
Color mountainDark = const Color.fromARGB(255, 185, 177, 111);
Color mountainLight = const Color.fromARGB(255, 253, 241, 192);

List rough_terrain = [
  ["spearow", false],
  ["fearow", false],
  ["sandshrew", false],
  ["sandslash", false],
  ["magnemite", false],
  ["magneton", false],
  ["rhyhorn", false],
  ["rhydon", false],
  ["skarmory", false],
  ["houndour", false],
  ["houndoom", false],
  ["phanpy", false],
  ["donphan", false],
  ["trapinch", false],
  ["vibrava", false],
  ["flygon", false],
  ["cacnea", false],
  ["cacturne", false],
  ["baltoy", false],
  ["claydol", false],
  ["bagon", false],
  ["shelgon", false],
  ["salamence", false],
  ["beldum", false],
  ["metang", false],
  ["metagross", false],
];
Color rough_terrainDark = Color.fromARGB(255, 167, 155, 131);
Color rough_terrainLight = const Color.fromARGB(255, 225, 214, 188);

List sea = [
  ["tentacool", false],
  ["tentacruel", false],
  ["seel", false],
  ["dewgong", false],
  ["shellder", false],
  ["cloyster", false],
  ["horsea", false],
  ["seadra", false],
  ["staryu", false],
  ["starmie", false],
  ["lapras", false],
  ["omanyte", false],
  ["omastar", false],
  ["kabuto", false],
  ["kabutops", false],
  ["chinchou", false],
  ["lanturn", false],
  ["qwilfish", false],
  ["corsola", false],
  ["remoraid", false],
  ["octillery", false],
  ["mantine", false],
  ["wingull", false],
  ["pelipper", false],
  ["carvanha", false],
  ["sharpedo", false],
  ["wailmer", false],
  ["wailord", false],
  ["lileep", false],
  ["cradily", false],
  ["spheal", false],
  ["sealeo", false],
  ["walrein", false],
  ["clamperl", false],
  ["relicanth", false],
  ["luvdisc", false],
  ["huntail", false],
  ["gorebyss", false],
];
Color seaDark = Color.fromARGB(255, 111, 160, 190);
Color seaLight = const Color.fromARGB(255, 174, 220, 248);

List urban = [
  ["meowth", false],
  ["persian", false],
  ["abra", false],
  ["kadabra", false],
  ["alakazam", false],
  ["grimer", false],
  ["muk", false],
  ["voltorb", false],
  ["electrode", false],
  ["koffing", false],
  ["weezing", false],
  ["ditto", false],
  ["eevee", false],
  ["vaporeon", false],
  ["jolteon", false],
  ["flareon", false],
  ["espeon", false],
  ["umbreon", false],
  ["porygon", false],
  ["porygon2", false],
  ["snubbull", false],
  ["granbull", false],
  ["smeargle", false],
  ["tyrogue", false],
  ["hitmonlee", false],
  ["hitmonchan", false],
  ["hitmontop", false],
  ["smoochum", false],
  ["jynx", false],
  ["ralts", false],
  ["kirlia", false],
  ["gardevoir", false],
  ["shuppet", false],
  ["banette", false],
  ["chansey", false],
  ["blissey", false],
  ["mr-mime", false],
];
Color urbanDark = const Color.fromARGB(255, 168, 128, 189);
Color urbanLight = const Color.fromARGB(255, 226, 186, 247);

List waters_edge = [
  ["squirtle", false],
  ["wartortle", false],
  ["blastoise", false],
  ["psyduck", false],
  ["golduck", false],
  ["poliwag", false],
  ["poliwhirl", false],
  ["poliwrath", false],
  ["politoed", false],
  ["slowpoke", false],
  ["slowbro", false],
  ["slowking", false],
  ["krabby", false],
  ["kingler", false],
  ["goldeen", false],
  ["seaking", false],
  ["magikarp", false],
  ["gyarados", false],
  ["dratini", false],
  ["dragonair", false],
  ["dragonite", false],
  ["totodile", false],
  ["croconaw", false],
  ["feraligatr", false],
  ["wooper", false],
  ["quagsire", false],
  ["mudkip", false],
  ["marshtomp", false],
  ["swampert", false],
  ["lotad", false],
  ["lombre", false],
  ["ludicolo", false],
  ["surskit", false],
  ["masquerain", false],
  ["azurill", false],
  ["marill", false],
  ["azumarill", false],
  ["barboach", false],
  ["whiscash", false],
  ["corphish", false],
  ["crawdaunt", false],
  ["anorith", false],
  ["armaldo", false],
  ["feebas", false],
  ["milotic", false],
];
Color waters_edgeDark = Color.fromARGB(255, 140, 164, 202);
Color waters_edgeLight = Color.fromARGB(255, 196, 223, 251);

/////////////
/// List of habitats
/////////////
/// 1: Cave
/// 2: Forest
/// 3: Grassland
/// 4: Mountain
/// 5. Rough-Terrain
/// 6. Sea
/// 7. Urban
/// 8. Water's-Edge
///
class HabitatConfirm extends StatefulWidget {
  const HabitatConfirm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HabitatConfirmState createState() => _HabitatConfirmState();
}

// Name: button()
// Input: List (the habitat), String (the name of the habitat), Color (darker), Color (lighter), BuildContext context
// Output: Widget w/ ElevatedButton
Widget button(
    List list, String title, Color dark, Color light, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HabitatCheck(
                          habitatList: list,
                          habitatName: title,
                          dark: dark,
                          light: light,
                        )));
          }));
}

class _HabitatConfirmState extends State<HabitatConfirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // background image
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/habitatconfirmbg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          // appBar on the top of the screen "title bar"
          appBar: AppBar(
            title: const Text('Safari Zone'),
          ),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          body: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text(
                      'Choose a habitat to explore!',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              button(cave, "Cave", caveDark, caveLight, context),
              button(forest, "Forest", forestDark, forestLight, context),
              button(grassland, "Grassland", grasslandDark, grasslandLight,
                  context),
              button(
                  mountain, "Mountain", mountainDark, mountainLight, context),
              button(rough_terrain, "Rough-Terrain", rough_terrainDark,
                  rough_terrainLight, context),
              button(sea, "Sea", seaDark, seaLight, context),
              button(urban, "Urban", urbanDark, urbanLight, context),
              button(waters_edge, "Water's-Edge", waters_edgeDark,
                  waters_edgeLight, context),
            ]),
          )),
    );
  }
}
