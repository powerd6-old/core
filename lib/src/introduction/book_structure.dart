import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class BookStructure extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Reading this book");

  final Chapter basicRules, characters, combat, exploration;
  final ChapterList appendices;
  BookStructure(
      {required this.basicRules,
      required this.characters,
      required this.combat,
      required this.exploration,
      required this.appendices})
      : super(markdown: """
${heading.toHtml()}

This book is written in such a way that you will go over the content and be prepared for your game at the end of it.

First, there are some ${Reference.internal(text: "basic rules", link: basicRules.getId()).toHtml()} explaining the fundamental mechanics for the system.

Following, the ${Reference.internal(text: "character systems", link: characters.getId()).toHtml()} will be explored. Here you will learn what characters are, how we represent them and how to create your own.

The next chapter is focused on ${Reference.internal(text: "combat", link: combat.getId()).toHtml()} and explain all you need to know in order to get into fights, and possibly win. Some scary topics like injuries and death are discussed here as well.

Finally, you will learn about ${Reference.internal(text: "exploration", link: exploration.getId()).toHtml()} mechanics and how to use all the other systems in the wilderness.

Additionally, some interesting rules, variants and clarifications are offered in the ${Reference.internal(text: "appendices", link: appendices.getId()).toHtml()}. These are not required reads, but they will help you understand the game deeply.
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}
