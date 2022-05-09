import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class TurnOrder extends MarkdownContent {
  TurnOrder(Indexable actions) : super(markdown: """
# Turn Order

During combat, every character has a turn associated to them, and during it they can perform any ${Reference.internal(text: "actions", link: actions.getId()).toHtml()} as usual.

The order in which each character takes their can be determined in two ways, each with their own benefits and drawbacks:

## "Players first"

This approach lets the players move first, ordering them by their Agility score, then taking turns for all friendly non-player characters, and finally taking turns for all the unfriendly or neutral non-player characters.

This approach is great in letting the players beat stronger characters than they normally can, however it often causes one-sided beatdowns that can make the players feel invincible, robbing them of the fun and tension of combat.

## "Agility Based"

This approach orders all characters based on their Agility score. The characters with higher Agility will act before the ones with lower Agility.

This approach is slower to setup, as the Game Master has to take into account every single character's Agility score, and possibly roll for tie-breakers. 
However, this approach is also the more "fair" one and doesn't rob the players from the challenges that combat represents.

## Resolving draws

In both approaches, if two or more characters have the same Agility and there are no narrative reasons to justify any specific order between then, then the characters will decide with a dice roll.

""");
}
