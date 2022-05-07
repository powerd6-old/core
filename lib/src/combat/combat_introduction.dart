import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CombatIntroduction extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Introduction to combat");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  CombatIntroduction() : super(markdown: """
${heading.toHtml()}

Combat in powerd6 tries to be simple, without losing the crunchiness that other systems that use multiple dice have.

Combat qualifies any situation where one or more characters are trying to harm others knowingly.

For example, two people getting into a bar fight qualify as combat, but the first attack from an assassin into their absent-minded target does not count as combat, although it does triggers combat.

As a side note, a common exception to this rule can be used by Game Masters to keep tension high. Using combat rules when there are no obvious enemies can lead to fun moments.
""");
}
