import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Welcome extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Welcome");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Welcome() : super(markdown: """
${heading.toHtml()}

Welcome to the powerd6 role-playing system.

This book contains the core rules of the system and provides a framework for players to use in order to run their fantastical narratives.

The rules of powerd6 are designed for everyone and are guided by these principles:

- Easy to learn
- Easy to play
- Easy to expand

This makes powerd6 a great system to introduce a group of new players to the amazing world of role-playing games, without losing the ability to grow with them and provide astounding experiences when they are more experienced.
""");
}
