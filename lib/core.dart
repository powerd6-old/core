import 'package:core/src/basics/actions.dart';
import 'package:core/src/basics/attributes.dart';
import 'package:core/src/basics/chances_success.dart';
import 'package:core/src/basics/players_and_roles.dart';
import 'package:core/src/basics/rolling_dice.dart';
import 'package:core/src/basics/spells.dart';
import 'package:core/src/basics/test.dart';
import 'package:core/src/character/character_points.dart';
import 'package:core/src/character/character_sheets.dart';
import 'package:core/src/character/characters.dart';
import 'package:core/src/character/point_buy.dart';
import 'package:core/src/combat/combat_critical.dart';
import 'package:core/src/combat/combat_damage.dart';
import 'package:core/src/combat/combat_introduction.dart';
import 'package:core/src/combat/damage.dart';
import 'package:core/src/combat/turn_order.dart';
import 'package:core/src/introduction/book_structure.dart';
import 'package:core/src/introduction/materials.dart';
import 'package:core/src/introduction/distribution.dart';
import 'package:core/src/introduction/recommended_distribution.dart';
import 'package:core/src/introduction/welcome.dart';
import 'package:powerbook/models.dart';

final List<Author> authors = [
  Author(
      name: "Hector Castelli Zacharias",
      email: "hector.zacharias@gmail.com",
      twitter: "ZektorH"),
];

Chapter introductionChapter =
    Chapter(heading: Heading(title: "Introduction"), contents: [
  Welcome(),
  Distribution(recommendedAppendix: recommendedAppendix),
  BookStructure(
      basicRules: basicsChapter,
      characters: charactersChapter,
      combat: combatChapter,
      appendices: appendix),
  Materials()
]);

Chapter recommendedAppendix = Chapter(
    heading: Heading(title: "Recommended Expansions and Supplements"),
    contents: [RecommendedDistribution()]);

TestCritical testCritical = TestCritical();

CriticalRoll criticalRoll =
    CriticalRoll(combatCritical: combatCritical, testCritical: testCritical);

Chapter basicsChapter =
    Chapter(heading: Heading(title: "Basic Rules"), contents: [
  PlayerAndRoles(),
  RollingDice(numberOfRolls: NumberOfRolls(), criticalRoll: criticalRoll),
  Test(chancesOfSuccess: chancesOfSuccess, testCritical: testCritical),
  AttributesContent(),
  actions,
  Spells(characterPoints: characterPoints),
]);

Actions actions = Actions();

Chapter chancesOfSuccess = Chapter(
    heading: Heading(title: "Chances of Success and Difficulties"),
    contents: [ChancesOfSuccessIntroduction(), ChancesOfSuccess()]);

PointBuy pointBuy = PointBuy();
CharacterPoints characterPoints = CharacterPoints(pointBuy: pointBuy);

Chapter charactersChapter =
    Chapter(heading: Heading(title: "Characters"), contents: [
  Characters(),
  CharacterSheets(characterSheetAppendix: characterSheets),
  characterPoints,
  pointBuy,
  // TODO: Showcase example character creation process
]);

Chapter characterSheets = Chapter(
    heading: Heading(title: "Printable Character Sheet"),
    contents: []); //TODO: Write a print-ready character sheet

CombatCritical combatCritical = CombatCritical();

Chapter combatChapter = Chapter(heading: Heading(title: "Combat"), contents: [
  CombatIntroduction(),
  TurnOrder(actions: actions),
  CombatDamage(criticalRoll: criticalRoll),
  combatCritical,
  Damage()
]);

ChapterList appendix = ChapterList(
    heading: Heading(title: "Appendices"),
    chapters: [recommendedAppendix, chancesOfSuccess, characterSheets]);

class CoreRuleBook extends Book {
  CoreRuleBook()
      : super(
            heading: Heading(
                title: "Core Rulebook",
                subtitle: "The core rules of the powerd6 role-playing system."),
            authors: authors,
            chapters:
                ChapterList(heading: Heading(title: "Chapters"), chapters: [
              introductionChapter,
              basicsChapter,
              charactersChapter,
              combatChapter,
            ]),
            appendices: appendix);
}
