import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Sheet extends MarkdownContent {
  Sheet(Indexable printableSheet) : super(markdown: """
# Character Sheet
Information about a character is stored in a "Character Sheet", a piece of paper with things written (or drawn) on it.

The basic information a character sheet contains are:

## Name:

Your character's name, nicknames and titles.

You can also use this field to take note of aliases your character is using, or has used.

Examples:
- Jack Fleetwind
- "Red Witch" Mary Goodfried
- King Drake, the II
## Species

Your character's species, from the list of available species in the game world you are currently playing in.
## Age

This can either be a number or a descriptor.

Examples:
- 26
- young
- Middle-aged

## Description

This is the physical description of your character. It includes traits, marks, scars, clothing. It is basically a starting point for any visual image of your character.

There are cases where the player wants physical details from their characters to remain hidden, at such cases it is recommended to share those details with the Game Master, but not write them down.

## Character Points

This is the amount of remaining Character Points your character has available to them.

## Current and Maximum Health Points

These are an indication of your character's vitals.

The maximum number of health points represents the healthiest your character can be, while the current number indicates how your character is faring at the time.

## Attributes

These are your attribute values, as well as an indication of which attribute is your preferred one.

### Focuses

Each attribute focus is also marked in this section.

## Inventory

A list of your worldly possessions.

It can also contain items you own, but are not physically carrying.

Examples:
- 3 torches
- Food rations for 5 days
- Horse-drawn carriage (parked at city gates)

### Currency

This section is meant to signify how much monetary value your character is carrying, this is left separated to avoid the need of writing down "gold coins" or similar in your inventory.

## Spells

A list of all the spells you know, with their activation requirement and effects.

## Bonuses

There are many things in the world that can modify your character that don't quite fit within the previous list.

Write these down in this section, along all the relevant information.

Examples:
- Blessing and curses
- Advantages and disadvantages, like those given by species and items
- Narrative conditions ("X days until quest expires")
- Long term wounds ("Injured left arm, X days until healed")

## Creating a character

Creating a character is one of the most, if not the most, important parts of a player's responsibilities.

It is recommended to players to be familiar with the rules as well as have a high-level concept in mind of what type of character they want to play.

The process of creating a character can be summarized into the following steps (note that they don't have to be done in order, but doing so facilitates the process):

1. Check with your Game Master how many character points you will have available
2. Think of a character concept
3. Choose a species
  - Don't forget to write down the Bonuses and the Base Health into your character sheet
4. Choose an age appropriate for your species of choice
5. Use your available Character Points according to the Point Buy rules below
6. Describe your character and name it.
7. Check with your Game Master if the character is appropriate for the game you plan on playing together.

A print-ready character sheet is available on the ${Reference.internal(text: printableSheet.getTitle(), link: printableSheet.getId()).toHtml()}.
""");
}
