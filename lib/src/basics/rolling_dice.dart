import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class RollingDice extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Rolling Dice");

  final Content numberOfRolls, criticalRoll;

  RollingDice({required this.criticalRoll, required this.numberOfRolls})
      : super(markdown: """
${heading.toHtml()}

There are multiple mechanics in the game that require a player to roll the dice to determine an outcome.

In the rest of the book, rolling a dice will be referred to as 1d6 for one dice roll, 2d6 for two dice rolls, and so on.

When rolling dice, these rules always apply:
${numberOfRolls.toHtml()}
${criticalRoll.toHtml()}
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  List<Indexable> getChildren() {
    return [numberOfRolls, criticalRoll].map((e) => e as Indexable).toList();
  }
}

class NumberOfRolls extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Number of rolls");

  NumberOfRolls() : super(markdown: """
${heading.toHtml()}

Normally, a player will only `1d6` and use its result, however, there are some cases where the player must roll `2d6` and use the results differently:
${AdvantageRolls().toHtml()}
${DisadvantageRolls().toHtml()}
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  List<Indexable> getChildren() {
    return [AdvantageRolls(), DisadvantageRolls()];
  }
}

class AdvantageRolls extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Advantage");

  AdvantageRolls() : super(markdown: """
${heading.toHtml()}

If something or someone is assisting the player in the action, or the action relates to a focus which the character has, roll with advantage.

Rolling with advantage means you will roll two dice, then choose the one that is most favourable to you.
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

class DisadvantageRolls extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Disadvantage");

  DisadvantageRolls() : super(markdown: """
${heading.toHtml()}

If something or someone is hindering the player in the action, or the action relates to a focus which you don´t have, roll with disadvantage.

Rolling with disadvantage means you will roll two dice, then use the one that is the least favourable to you.
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

class CriticalRoll extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Critical rolls");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  final Indexable combatCritical, testCritical;

  CriticalRoll({required this.combatCritical, required this.testCritical})
      : super(markdown: """
${heading.toHtml()}

Whenever a dice is rolled and it lands on the number corresponding to your Character's preferred attribute, that roll is considered a critical.

Critical rolls have different effects based on the situation of the roll:

- ${Reference.internal(link: testCritical.getId(), text: "see ${testCritical.getTitle()}").toHtml()}; and 
- ${Reference.internal(link: combatCritical.getId(), text: "see ${combatCritical.getTitle()}").toHtml()};
""");
}
