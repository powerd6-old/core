import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class BookStructure extends Content with Indexable {
  final Heading heading = Heading(title: "Reading this book");

  final Chapter basicRules, characters, combat, exploration;
  final ChapterList appendices;

  BookStructure(
      {required this.basicRules,
      required this.characters,
      required this.combat,
      required this.exploration,
      required this.appendices});

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  String toHtml() {
    return """
      ${heading.toHtml()}
      <p>This book is written in such a way that you will go over the content and be prepared for your game at the end of it.</p>
      <p>First, there are some ${Reference(link: "#${basicRules.getId()}", text: "basic rules").toHtml()} explaining the fundamental mechanics for the system.</p>
      <p>Following, the ${Reference(link: "#${characters.getId()}", text: "character systems").toHtml()} will be explored. Here you will learn what characters are, how we represent them and how to create your own.</p>
      <p>The next chapter is focused on ${Reference(link: "#${combat.getId()}", text: "combat").toHtml()} and explain all you need to know in order to get into fights, and possibly win. Some scary topics like injuries and death are discussed here as well.</p>
      <p>Finally, you will learn about ${Reference(link: "#${exploration.getId()}", text: "exploration").toHtml()} mechanics and how to use all the other systems in the wilderness.</p>
      <p>Additionally, some interesting rules, variants and clarifications are offered in the ${Reference(link: "#${appendices.getId()}", text: "appendices").toHtml()}. These are not required reads, but they will help you understand the game deeply.</p>
""";
  }
}
