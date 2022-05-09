import 'package:core/content/chapters/character.dart';
import 'package:core/content/chapters/combat.dart';
import 'package:core/content/chapters/rules/actions.dart';
import 'package:core/content/chapters/rules/attributes_and_focuses.dart';
import 'package:core/content/chapters/rules/dice.dart';
import 'package:core/content/chapters/rules/player_roles.dart';
import 'package:core/content/chapters/rules/spells.dart';
import 'package:core/content/chapters/tests.dart';
import 'package:powerbook/models.dart';
import 'package:powerbook/mixins.dart';

class RulesChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Rules"),
      contents: [playerRoles, dice, attributesAndFocuses, actions, spells]);
  static final Content playerRoles = PlayerRoles();
  static final Content dice = Dice(
      TestChapter.critical as Indexable, CombatChapter.critical as Indexable);
  static final Content attributesAndFocuses = AttributesAndFocuses();
  static final Content actions = Actions();
  static final Content spells = Spells(CharacterChapter.points as Indexable);
}
