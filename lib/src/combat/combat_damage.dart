import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CombatDamage extends MarkdownContent with Indexable {
  static Heading heading =
      Heading(title: "Combat Damage", subtitle: "Health Points and Damage");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  final Indexable criticalRoll;

  CombatDamage({required this.criticalRoll}) : super(markdown: """
${heading.toHtml()}

During combat, it is natural for damage to be dealt to characters. To determine if an attack will deal damage to a character, both the attacking and the target characters' attributes are taken into account.

The attacking character rolls `1d6` and adds to it their preferred attribute value. 
Then, the target character uses their own preferred attribute value, optionally adding `1d6` if they took a defensive action (like raising their shield, or preparing for an attack) during their last turn.

If the attacker's number is equal to or larger than the target's number, the attack lands and damage will be dealt.

In order words, if `1d6 + Attacker's preferred attribute value >= Target's preferred attribute value ( + 1d6 if the target took defensive action on their last turn)`, then damage will be dealt.

The amount of damage dealt is:
- The weapon's attack number; or
- The value specified on the spell's effect; or
- 1 point of damage, if there are no values specified.

Additional damage can be dealt if the attacker rolls a ${Reference.internal(text: "critical", link: criticalRoll.getId()).toHtml()} on their dice.

""");
}
