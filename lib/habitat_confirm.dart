// Name: habitat_confirm:
// based on: https://www.youtube.com/watch?v=mMgr47QBZWA
//
// This screen is where: The user may choose a habitat they wish to "explore".
//
// The user shall choose a habitat from a list.
// Before moving onto the "habitat_checklist" screen,:
// The habitat value retrieves a list of Pokemon that live in the habitat
// The list will be saved
// and then  the list will be sent to the "habitat_checklist"
// The user may press a "home button" to return to the main menu

import 'package:flutter/material.dart';
import 'package:pokedextest/util/checklist.dart';
import 'package:pokedextest/util/checklist_tile.dart';

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
/// //////////////////
/// Functions
/// /////////////////
///
///
/// Name: summon list of pokemon
///
///
///
///
///
///
///
///
///
/// ////////////
/// MAIN FUNCTION
/// ////////////
///
///
///\
const double insets = 8;
const double sizeW = 50;
const double sizeL = 100;
const double fontS = 20;

class HabitatConfirm extends StatefulWidget {
  @override
  _HabitatConfirmState createState() => _HabitatConfirmState();
}

class _HabitatConfirmState extends State<HabitatConfirm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/habitatconfirmbg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          // appBar on the top of the screen "title bar"
          appBar: AppBar(
            title: const Text('Habitat Confirm'),
          ),
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          body: Column(children: [
            Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'What habitat are you exploring?',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      backgroundColor:
                          const Color.fromARGB(187, 255, 255, 255)),
                )),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Cave",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: cave, habitatName: "Cave")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Forest",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: forest, habitatName: "Forest")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Grassland",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: grassland,
                                  habitatName: "Grassland")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Mountain",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              //builder: (context) => const HabitatConfirm()));
                              builder: (context) => HabitatCheck(
                                    habitatList: mountain,
                                    habitatName: "Mountain",
                                  )));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Rough-Terrain",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: rough_terrain,
                                  habitatName: "Rough-Terrain")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Sea",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: sea, habitatName: "Sea")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Urban",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: urban, habitatName: "Urban")));
                    })),
            Padding(
                padding: const EdgeInsets.all(insets),
                child: ElevatedButton(
                    child: const Text(
                      "Water's-Edge",
                      style: TextStyle(fontSize: fontS),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HabitatCheck(
                                  habitatList: waters_edge,
                                  habitatName: "Water's-Edge")));
                    })),
          ])),
    );
  }
}
