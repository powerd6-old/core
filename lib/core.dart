import 'package:core/src/basics/actions.dart';
import 'package:core/src/basics/attributes.dart';
import 'package:core/src/basics/chances_success.dart';
import 'package:core/src/basics/players_and_roles.dart';
import 'package:core/src/basics/rolling_dice.dart';
import 'package:core/src/basics/test.dart';
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
      exploration: explorationChapter,
      appendices: appendix),
  Materials()
]);

Chapter recommendedAppendix = Chapter(
    heading: Heading(title: "Recommended Expansions and Supplements"),
    contents: [RecommendedDistribution()]);

TestCritical testCritical = TestCritical();

CriticalRoll criticalRoll = CriticalRoll(
    combatCritical: testCritical, // TODO: fix combatCritical
    testCritical: testCritical);

Chapter basicsChapter =
    Chapter(heading: Heading(title: "Basic Rules"), contents: [
  PlayerAndRoles(),
  RollingDice(numberOfRolls: NumberOfRolls(), criticalRoll: criticalRoll),
  Test(chancesOfSuccess: chancesOfSuccess, testCritical: testCritical),
  Attributes(),
  Actions(),
  // TODO: Explain spells
]);

Chapter chancesOfSuccess = Chapter(
    heading: Heading(title: "Chances of Success and Difficulties"),
    contents: [ChancesOfSuccessIntroduction(), ChancesOfSuccess()]);

Chapter charactersChapter =
    Chapter(heading: Heading(title: "Characters"), contents: [
  // TODO: Write about what "characters" are
  // TODO: Share character sheet
  // TODO: Share rules for filling the character sheet
  // TODO: Showcase example character creation process
]);

Chapter combatChapter = Chapter(heading: Heading(title: "Combat"), contents: [
  // TODO: Write a "intro to combat" detailling what counts as combat
  // TODO: Explain turn order
  // TODO: Explain HP, damage
  // TODO: Explain death, resurrection and unconsciousness
]);

Chapter explorationChapter =
    Chapter(heading: Heading(title: "Exploration"), contents: [
  // TODO: Write a "intro to exploration" sharing how exploration can fit into the game
  // TODO: Explain how to use combat spells outside of combat
]);

ChapterList appendix = ChapterList(
    heading: Heading(title: "Appendices"),
    chapters: [recommendedAppendix, chancesOfSuccess]);

class CoreRuleBook extends Book {
  CoreRuleBook()
      : super(
            heading: Heading(
                title: "Core Rulebook",
                subtitle: "The core rules of the powerd6 role-playing system."),
            authors: authors,
            chapters: ChapterList(
                heading: Heading(title: "Chapters"),
                chapters: [
                  introductionChapter,
                  basicsChapter,
                  charactersChapter,
                  combatChapter
                ]),
            appendices: appendix);
}
