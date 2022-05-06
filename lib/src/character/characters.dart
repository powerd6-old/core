import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Characters extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "What are characters");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Characters() : super(markdown: """
${heading.toHtml()}

Characters sit at the core of the powerd6 system and they fill an otherwise static world with life, chaos and joy.

A character is a being, living or not, that has agency and is capable to making decisions and taking actions.

To put it simply, all "creatures" and "people" of the world are characters, even the monsters.
""");
}
