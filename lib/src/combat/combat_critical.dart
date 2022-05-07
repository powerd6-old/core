import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CombatCritical extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Combat Critical");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  CombatCritical() : super(markdown: """
${heading.toHtml()}

If the attacker's roll is a critical roll, then they double whatever damage they would normally deal.
""");
}
