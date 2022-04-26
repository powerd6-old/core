import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Distribution extends Content with Indexable {
  final Heading heading =
      Heading(title: "A note on Distribution", headingLevel: 2);

  final Chapter recommendedAppendix;

  Distribution({required this.recommendedAppendix});

  @override
  String toHtml() {
    return """
      <h1 id="${getId()}">${getTitle()}</h1>
      <p>The powerd6 system is capable of running a wide variety of games, as such the books are separated between the core rules, expansions and supplements.</p>
      <p>In general, expansions add or modify the rules to encompass new situations that were not accounted for at the initial design, while supplements add world-building flavour and details, helping to get over the hurdle of creating content for your adventures.</p>
      <p>Strictly speaking, only the core rules are required to play the game, but the extra books provide a multitude of new rules, pre-created content, and balanced experiences for running a game quickly.</p>
      <p>See the <a href="#${recommendedAppendix.heading.getId()}">appendix: ${recommendedAppendix.heading.title}</a> for a list of some recommended books.</p>
""";
  }

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}
