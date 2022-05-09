import 'package:powerbook/models.dart';

class Damage extends IndexableMarkdownContent {
  Damage() : super(markdown: """
# Damage

Whenever damage is dealt to a character, that damage is removed from it's Health Pool.

Once this happens, the following rules guide you on interpreting how that damage is received:

| Current Health | Effect |
| --- | --- |
| Half of your maximum health, rounded down | Receive one light injury |
| A third of your maximum health, rounded down | Receive one light injury |
| 1	| Receive one grave injury. |
| 0	| Your character goes unconscious and unable to act. |
| -5	| Your character is dead. |

## Injuries

In general injuries are semi-permanent effects that hinder a character for a fixed amount of time. They are written on the "bonus" section of the character sheet.

There are two types of injuries: Light and Grave.

Light injuries take 1 week to heal and remove 1 Health Point from a character's maximum Health Points. 
Grave injuries take 1 month to heal and remove 3 Health Points from a character's maximum Health Points.

## Unconsciousness

Going unconscious is an extremely dangerous thing.

While unconscious, your character is unable to do anything but is still a viable target for your opponents.

Every turn, if you fail an Endurance test of difficulty 7, you take 1 damage.

## Death

Death is the point of no return.

Once a character is dead, nothing can save it.
""");
}
