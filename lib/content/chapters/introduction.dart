import 'package:core/content/appendices/recommended.dart';
import 'package:core/content/chapters.dart';
import 'package:core/src/introduction/book_structure.dart';
import 'package:core/src/introduction/distribution.dart';
import 'package:core/src/introduction/materials.dart';
import 'package:core/src/introduction/welcome.dart';
import 'package:powerbook/models.dart';

class IntroductionChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Introduction"),
      contents: [welcome, distribution, structure, materials]);

  static final Welcome welcome = Welcome();
  static final Distribution distribution =
      Distribution(recommendedAppendix: RecommendedAppendix.chapter);
  static final BookStructure structure = BookStructure(
      basicRules: basicRules,
      characters: characters,
      combat: combat,
      appendices: BookChapters.appendices);
  static final Materials materials = Materials();
}
