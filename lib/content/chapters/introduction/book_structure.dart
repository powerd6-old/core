import 'package:powerbook/models.dart';

class BookStructure extends IndexableMarkdownContent {
  BookStructure(Chapter basicRules, Chapter characters, Chapter tests,
      Chapter combat, ChapterList appendices)
      : super(markdown: """
# Reading this book


This book is written in such a way that you will go over the content and be prepared for your game at the end of it.

First, there are some ${Reference.internal(text: "basic rules", link: basicRules.getId()).toHtml()} explaining the fundamental mechanics for the system.

Following, the ${Reference.internal(text: "character systems", link: characters.getId()).toHtml()} will be explored. Here you will learn what characters are, how we represent them and how to create your own.

Then, you will explore the rules for ${Reference.internal(text: "tests", link: tests.getId()).toHtml()} and learn how to handle difficult or uncertain situations.

Finally, you will learn about ${Reference.internal(text: "combat", link: combat.getId()).toHtml()} and learn all you need to know in order to get into fights, and possibly win. Some scary topics like injuries and death are discussed here as well.

Additionally, some interesting rules, variants and clarifications are offered in the ${Reference.internal(text: "appendices", link: appendices.getId()).toHtml()}. These are not required reads, but they will help you understand the game deeply.
""");
}
