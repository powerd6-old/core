import 'package:core/content/appendices/character_sheet/printable_sheet.dart';
import 'package:powerbook/models.dart';

class CharacterSheetAppendix {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Character Sheets"), contents: [printableSheet]);

  static final Content printableSheet = PrintableSheet();
}
