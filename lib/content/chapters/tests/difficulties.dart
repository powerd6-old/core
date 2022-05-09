import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Difficulties extends IndexableMarkdownContent {
  Difficulties(Indexable chanceOfSuccess) : super(markdown: """
# Difficulties

The difficulty of a test depends on who is taking it, therefore it is the Game Master's responsibility to choose the appropriate difficulty for each situation.

As a reference, these are some appropriate difficulties for tests, and at which attribute value the test has 50% chance of success or partial success:

| Likelihood |	Difficulty |	50% chance at attribute value |
| --- | --- | --- |
| Granted |	1 |	-3 |
| Trivial |	2 |	-2 |
| Expected |	3 |	-1 |
| Very Likely |	4 |	0 |
| Likely |	5 |	1 |
| Reasonable |	6 |	2 |
| Unreasonable |	7 |	3 |
| Difficult |	8 |	4 |
| Very Difficult |	9 |	5 |
| Unbelievable |	10 |	N/A |
| Nearly Impossible |	11 |	N/A |
| Impossible |	12 |	N/A |

Note that the **impossible** difficulty is only possible if the character has a blessing, item, spell or other effect that adds +1 to the test in question.

A detailed breakdown of the percent chance of success on each difficulty, for each attribute value, is available on ${Reference.internal(text: chanceOfSuccess.getTitle(), link: chanceOfSuccess.getId()).toHtml()}.

""");
}
