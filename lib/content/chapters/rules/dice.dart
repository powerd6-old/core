import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Dice extends IndexableMarkdownContent {
  Dice(Indexable testCritical, Indexable combatCritical) : super(markdown: """
# Rolling dice

There are multiple mechanics in the game that require a player to roll the dice to determine an outcome.

In the rest of the book, rolling a dice will be referred to as 1d6 for one dice roll, 2d6 for two dice rolls, and so on.

When rolling dice, these rules always apply:

## Number of rolls

Normally, a player will only 1d6 and use its result, however, there are some cases where the player must roll 2d6 and use the results differently:

### Advantage

If something or someone is assisting the player in the action, or the action relates to a focus which the character has, roll with advantage.

Rolling with advantage means you will roll two dice, then choose the one that is most favourable to you.

### Disadvantage

If something or someone is hindering the player in the action, or the action relates to a focus which you don´t have, roll with disadvantage.

Rolling with disadvantage means you will roll two dice, then use the one that is the least favourable to you.

### Stacking Advantages and Disadvantages

If multiple effects cause a roll to have multiple Advantages and Disadvantages, remove them in pairs until there is either one Disadvantage, one Advantage or none of them.

This can be interpreted as advantages being cancelled by disadvantages. This does not mean that, with two Advantages you roll your dice three times. Advantages and Disadvantages do not stack.

## Critical rolls

Whenever a dice is rolled and it lands on the number corresponding to your Character's preferred attribute, that roll is considered a critical.

Critical rolls have different effects based on the situation of the roll:

- ${Reference.internal(link: testCritical.getId(), text: "see ${testCritical.getTitle()}").toHtml()}; and 
- ${Reference.internal(link: combatCritical.getId(), text: "see ${combatCritical.getTitle()}").toHtml()};

""");
}
