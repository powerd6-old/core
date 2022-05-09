import 'package:core/content/appendices/character_sheet.dart';
import 'package:core/content/chapters/character/definition.dart';
import 'package:core/content/chapters/character/point_buy.dart';
import 'package:core/content/chapters/character/points.dart';
import 'package:core/content/chapters/character/sheet.dart';
import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CharacterChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Character"),
      contents: [definition, sheet, points, pointBuy]);

  static final Content definition = Definition();
  static final Content sheet = Sheet(CharacterSheetAppendix.chapter);
  static final Content points = Points(pointBuy as Indexable);
  static final Content pointBuy = PointBuy();
}
