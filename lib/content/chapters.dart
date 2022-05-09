import 'package:core/content/appendices/character_sheet.dart';
import 'package:core/content/appendices/recommended.dart';
import 'package:core/content/chapters/character.dart';
import 'package:core/content/chapters/combat.dart';
import 'package:core/content/chapters/introduction.dart';
import 'package:core/content/chapters/rules.dart';
import 'package:powerbook/models.dart';

class BookChapters {
  static final ChapterList chapters =
      ChapterList(heading: Heading(title: "Chapters"), chapters: [
    IntroductionChapter.chapter,
    RulesChapter.chapter,
    CharacterChapter.chapter,
    CombatChapter.chapter,
  ]);

  static final ChapterList appendices =
      ChapterList(heading: Heading(title: "Appendices"), chapters: [
    RecommendedAppendix.chapter,
    CharacterSheetAppendix.chapter,
  ]);
}
