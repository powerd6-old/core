import 'package:core/content/appendices/chance_of_success/chance_of_success.dart';
import 'package:core/content/appendices/chance_of_success/introduction.dart';
import 'package:powerbook/models.dart';

class ChanceOfSuccessAppendix {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Chances of Success"),
      contents: [introduction, chanceOfSuccess]);
  static final Content introduction = Introduction();
  static final Content chanceOfSuccess = ChanceOfSuccess();
}
