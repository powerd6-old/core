import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Points extends IndexableMarkdownContent {
  Points(Indexable pointBuy) : super(markdown: """
# Character Points

Character points are a way of representing how powerful or versatile your character is. 
Each game will have a set amount of character points made available to the players at the start, so they can create their character. 
More points can be acquired during the games, increasing the power of a character.

Character points can be spent during character creation or whenever a character is out of danger.

When spending character points, each point correlates to 30 minutes of time spent, so make sure your character can afford the downtime before spending character points. 
This means that, for example, if a player wants to use 4 character points to learn a new spell, their character will be focused on learning the new spell for 2 in-game hours.

Remember, not all rules from the ${Reference.internal(text: "character creation point buy", link: pointBuy.getId()).toHtml()} are available when upgrading your character later on.

## Progression

Character points are essential for the progression of the game.

This mechanic is controlled solely by the Game Master and it's a tool that allows the potential of a character to be unlocked over time.

Whenever appropriate, the Game Master can give a player more character points. Some examples of situations that warrant such rewards are:

- Defeating a powerful enemy
- Succeeding in a test with difficulty 9 or above
- Interpreting their character well, especially if doing so is disadvantageous to the player.

There is no absolute rule for this, but the typical scenario has your players getting rewarded with character points at least once every two sessions.
""");
}
