import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CharacterSheets extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Character Sheet");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  final Indexable characterSheetAppendix;

  CharacterSheets({required this.characterSheetAppendix}) : super(markdown: """
${heading.toHtml()}

Information about a character is stored in a "Character Sheet", a piece of paper with things written (or drawn) on it.

The basic information a character sheet contains are:

- Name:

  Your character's name, nicknames and titles.

  You can also use this field to take note of aliases your character is using, or has used.

  Examples:
  - Jack Fleetwind
  - "Red Witch" Mary Goodfried
  - King Drake, the II
- Species

  Your character's species, from the list of available species in the game world you are currently playing in.
- Age

  This can either be a number or a descriptor.

  Examples:
  - 26
  - young
  - Middle-aged
- Description

  This is the physical description of your character. It includes traits, marks, scars, clothing. It is basically a starting point for any visual image of your character.

  There are cases where the player wants physical details from their characters to remain hidden, at such cases it is recommended to share those details with the Game Master, but not write them down.
- Character Points

  This is the amount of remaining Character Points your character has available to them.
- Attributes

  These are your attribute values, as well as an indication of which attribute is your preferred one.

  - Focuses

    Each attribute focus is also marked in this section.

- Inventory

  A list of your worldly possessions.

  It can also contain items you own, but are not physically carrying.

  Examples:
  - 3 torches
  - Food rations for 5 days
  - Horse-drawn carriage (parked at city gates)

  - Currency

    This section is meant to signify how much monetary value your character is carrying, this is left separated to avoid the need of writing down "gold coins" or similar in your inventory.

- Spells

  A list of all the spells you know, with their activation requirement and effects.

- Bonuses

  There are many things in the world that can modify your character that don't quite fit within the previous list.

  Write these down in this section, along all the relevant information.

  Examples:
  - Blessing and curses
  - Advantages and disadvantages, like those given by species and items
  - Narrative conditions ("X days until quest expires")
  - Long term wounds ("Injured left arm, X days until healed")

A print-ready character sheet is available on the ${Reference.internal(text: characterSheetAppendix.getTitle(), link: characterSheetAppendix.getId()).toHtml()}.

""");
}
