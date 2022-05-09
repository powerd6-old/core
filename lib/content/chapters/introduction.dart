import 'package:core/content/appendices/recommended.dart';
import 'package:core/content/chapters.dart';
import 'package:core/content/chapters/character.dart';
import 'package:core/content/chapters/combat.dart';
import 'package:core/content/chapters/introduction/book_structure.dart';
import 'package:core/content/chapters/introduction/distribution.dart';
import 'package:core/content/chapters/introduction/materials.dart';
import 'package:core/content/chapters/introduction/welcome.dart';
import 'package:core/content/chapters/rules.dart';
import 'package:core/content/chapters/tests.dart';
import 'package:powerbook/models.dart';

class IntroductionChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Introduction"),
      contents: [welcome, distribution, structure, materials]);

  static final Welcome welcome = Welcome();
  static final Distribution distribution =
      Distribution(RecommendedAppendix.chapter);
  static final BookStructure structure = BookStructure(
      RulesChapter.chapter,
      CharacterChapter.chapter,
      TestChapter.chapter,
      CombatChapter.chapter,
      BookChapters.appendices);
  static final Materials materials = Materials();
}
