import 'package:powerbook/models.dart';

class Tests extends MarkdownContent {
  Tests() : super(markdown: """
# Tests

Tests represent difficult tasks or things that are left to chance.

Every test has a difficulty and an attribute associated to them.

To determine the outcome of a test, sum `1d6` to the value of the characters' attribute corresponding to the test.

If the value is more than the difficulty of the test, then **succeed** on the test.

If the value is less than the difficulty of the test, then **fail** the test.

If the value is the same as the difficulty of the test, narrate a **partial success**. 
For example, if trying to pick a lock, narrate that the lock is unlocked, but the door appears to be stuck regardless.
""");
}
