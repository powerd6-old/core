import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class PointBuy extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Point Buy");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  PointBuy() : super(markdown: """
${heading.toHtml()}

These are the rules that apply when using character points.

Note that whenever a negative value appears, it means the change will give character points **back** to the character.

- Attribute values:

  Each attribute value increase costs `4` times the destination value to be achieved.
  For example, increasing from `3` to `4` it takes `16` (`4*4`) points.

  Each attribute value decrease beyond `0` returns `3` times the destination value in points.
  For example, decreasing from `-1` to `-2` takes `-6` (`3*-2`) points, effectively returning them.

  Decreasing attribute values is only allowed during character creation.

- Acquiring a focus:

  To select an attribute focus, the cost depends on the number of focuses your character currently has:

  - 0 to 2: `1` point
  - 3 to 4: `5` points
  - 5 to 6: `9` points
  - 7 to 8: `10` points
  - 9 to 14: `11` points
  - 15 to 18: `12` points

- Health Points:

  It is not possible to remove Health Points from a character.

  Each extra health point increase costs `2` times the destination value.
  For example, to increase from `10` to `11` it takes `22` (`2*11`) points.

- Learning spells

  If the spell in question has all their requirements for learning fulfilled, the player may choose to spend their character points in accordance to the spell's learning cost in order to learn it.

  Learning a spell does not automatically fulfils it's ritual requirements.

- Getting currency

  Every point used to get currency results in two units of currency being added to the character's inventory.

  When creating a new character, this currency is used to buy your initial inventory contents.

  This is only allowed during character creation.

""");
}
