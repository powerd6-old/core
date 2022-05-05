import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Test extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Tests");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  List<Indexable> getChildren() {
    return [testCritical, TestDifficulties(chancesOfSuccess)];
  }

  final TestCritical testCritical;
  final Chapter chancesOfSuccess;

  Test({required this.testCritical, required this.chancesOfSuccess})
      : super(markdown: """
${heading.toHtml()}

Tests represent difficult tasks or things that are left to chance.

Every test has a difficulty and an attribute associated to them.

To determine the outcome of a test, sum `1d6` to the value of the characters' attribute corresponding to the test.

If the value is more than the difficulty of the test, then **succeed** on the test.

If the value is less than the difficulty of the test, then **fail** the test.

If the value is the same as the difficulty of the test, narrate a **partial success**. For example, if trying to pick a lock, narrate that the lock is unlocked, but the door appears to be stuck regardless.

${testCritical.toHtml()}
${TestDifficulties(chancesOfSuccess).toHtml()}
""");
}

class TestCritical extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Test Critical");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  TestCritical() : super(markdown: """
${heading.toHtml()}

If the roll for the test is critical add 3 to the roll result.

Regardless of the test result, either a success or a failure, then that result is amplified.

Critical failures and successes are exaggerated, often more satisfying or comical than their normal counterpart.
"""); // TODO: verify if the "add 3 to result" means critical failures are too rare
}

class TestDifficulties extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Difficulties");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  TestDifficulties(Indexable chancesOfSuccess) : super(markdown: """
${heading.toHtml()}


The difficulty of a test depends on who is taking it, therefore it is the Game Master's responsibility to choose the appropriate difficulty for each situation.

As a reference, these are some appropriate difficulties for tests, and at which AV the test has 50% chance of success or partial success:

${LikelihoodTable().toHtml()}

Note that the **impossible** difficulty is only possible if the character has a blessing, item, spell or other effect that adds +1 to the test in question.

A detailed breakdown of the percent chance of success on each difficulty, with each AV value is available on ${Reference.internal(text: chancesOfSuccess.getTitle(), link: chancesOfSuccess.getId()).toHtml()}
""");
}

class LikelihoodTable extends Content {
  @override
  String toHtml() {
    return '<table>'
        '<thead>'
        '<tr>'
        '<th>Likelihood</th>'
        '<th style="text-align:center">Difficulty</th>'
        '<th style="text-align:center">50% chance at AV</th>'
        '</tr>'
        '</thead>'
        '<tbody>'
        '<tr>'
        '<td><strong>Granted</strong></td>'
        '<td style="text-align:center">1</td>'
        '<td style="text-align:center">-3</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Trivial</strong></td>'
        '<td style="text-align:center">2</td>'
        '<td style="text-align:center">-2</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Expected</strong></td>'
        '<td style="text-align:center">3</td>'
        '<td style="text-align:center">-1</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Very Likely</strong></td>'
        '<td style="text-align:center">4</td>'
        '<td style="text-align:center">0</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Likely</strong></td>'
        '<td style="text-align:center">5</td>'
        '<td style="text-align:center">1</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Reasonable</strong></td>'
        '<td style="text-align:center">6</td>'
        '<td style="text-align:center">2</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Unreasonable</strong></td>'
        '<td style="text-align:center">7</td>'
        '<td style="text-align:center">3</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Difficult</strong></td>'
        '<td style="text-align:center">8</td>'
        '<td style="text-align:center">4</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Very Difficult</strong></td>'
        '<td style="text-align:center">9</td>'
        '<td style="text-align:center">5</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Unbelievable</strong></td>'
        '<td style="text-align:center">10</td>'
        '<td style="text-align:center">N/A</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Nearly Impossible</strong></td>'
        '<td style="text-align:center">11</td>'
        '<td style="text-align:center">N/A</td>'
        '</tr>'
        '<tr>'
        '<td><strong>Impossible</strong></td>'
        '<td style="text-align:center">12</td>'
        '<td style="text-align:center">N/A</td>'
        '</tr>'
        '</tbody>'
        '</table>';
  }
}
