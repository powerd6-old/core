import 'package:powerbook/models.dart';

class Actions extends MarkdownContent {
  Actions() : super(markdown: """
# Actions

The game is structured around turns. Turns are a fixed time-based concept that represents actions that can be taken in and out of combat.

Outside of combat, turns last for 10 seconds.

A turn can be composed of:

- 1 Full Action; or
- 2 Half Actions; or
- 1 Half Action and 1 Reaction (preparation);

In addition to these, a turn can have up to three unique Free Actions, regardless of what else happened during it.

Any of the actions types can be counted as a defensive action, if they would reduce the chance of an opponent hitting or damaging a character.

## Full Actions

Full actions are complex and powerful.

Attacking, using some spells and sprinting are examples of full actions.

## Half Actions

Half actions are significant, but not too timely actions. They usually require focus or occupy the user's attention for a significant amount of time.

Examples are:

- Taking an item from a bag or sack;
- Carefully interacting with an object in reach;

## Reactions

A reaction is a special type of Half action.

Reactions must be prepared on a character's turn, but they may activate outside of their turn.

When preparing a reaction, a clear condition must be established. If that condition is fulfilled until the next turn, then the reaction is activated and the action will be played out normally.

Once a reaction is activated, further occurrences of the condition will not activate it again.

Some examples of reactions are:

- "Once the wizard tries to drink a potion, I will shoot his hand"
- "If a nearby enemy tries to attack my partner, I will jump in front of them with my shield"

## Free Action

Free actions are small things that take little to no time, and can often be done while doing something else.

It is important to note that each of these can only be executed once per turn (You cannot interact with two objects on the same turn for free). The second instance of the same free action during a turn counts as a Half Action.

Examples are:

- Saying or yelling something;
- Making a gesture or a pose;
- Interacting with an object in reach;
- Dropping an object on the character's hands;
- Giving an object on the character's hands to another nearby willing character;
""");
}
