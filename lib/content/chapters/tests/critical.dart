import 'package:powerbook/models.dart';

class Critical extends IndexableMarkdownContent {
  Critical() : super(markdown: """
# Critical

If the roll for the test is critical add 3 to the roll result.

Regardless of the test result, either a success or a failure, then that result is amplified.

Critical failures and successes are exaggerated, often more satisfying or comical than their normal counterpart.
"""); // TODO: verify if the "add 3 to result" means critical failures are too rare
}
