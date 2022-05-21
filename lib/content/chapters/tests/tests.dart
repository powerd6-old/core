import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class Tests extends IndexableMarkdownContent {
  Tests() : super(markdown: """
# Tests

Tests represent difficult tasks or things that are left to chance.

Every test has a difficulty and an attribute or focus associated to them.

To determine the outcome of a test, sum `1d6` to the value of the characters' attribute corresponding to the test.

If the value is more than the difficulty of the test, then **succeed** on the test.

If the value is less than the difficulty of the test, then **fail** the test.

If the value is the same as the difficulty of the test, narrate a **partial success**. 
For example, if trying to pick a lock, narrate that the lock is unlocked, but the door appears to be stuck regardless.

## Leveraging focuses

If a test is related to an attribute in which you have a focus on, you get to roll for it with advantage.

If the test is related to a focus, you also get the advantage.

It is important to note that a character with a focus on ${Reference.forFocus(Focuses.awareness).toHtml()}, for example, would not get an advantage on a ${Reference.forFocus(Focuses.insight).toHtml()} test, but would on a ${Reference.forAttribute(Attributes.perception).toHtml()} test.
""");
}
