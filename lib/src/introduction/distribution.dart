import 'package:core/src/introduction/recommended_distribution.dart';
import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Distribution extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "A note on Distribution");

  final Chapter recommendedAppendix;

  Distribution({required this.recommendedAppendix}) : super(markdown: """
${heading.toHtml()}

The powerd6 system is capable of running a wide variety of games, as such the books are separated between the core rules, expansions and supplements.

In general, expansions add or modify the rules to encompass new situations that were not accounted for at the initial design, while supplements add world-building flavour and details, helping to get over the hurdle of creating content for your adventures.

Strictly speaking, only the core rules are required to play the game, but the extra books provide a multitude of new rules, pre-created content, and balanced experiences for running a game quickly.

See the ${Reference.internal(link: recommendedAppendix.heading.getId(), text: "appendix: ${recommendedAppendix.heading.title}").toHtml()} for a list of some recommended books.
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
