import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Spells extends MarkdownContent {
  Spells(Indexable characterPoints) : super(markdown: """
# Spells

Spells are special abilities that can be activated to create extraordinary effects.

Each spell is composed by an activation requirement, an effect, learning requirements and learning cost.

To learn a spell, a character must fulfil all the learning requirements and spend ${Reference.internal(text: "character points", link: characterPoints.getId()).toHtml()} equal to the spell's learning cost.

Once a spell is known, a character may activate it anytime they wish to, as part of their turn or as a reaction, if they are able to fulfil the activation requirements.

Once a spell is activated, it's effects are put into play and resolved as described.

""");
}
