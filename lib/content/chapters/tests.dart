import 'package:core/content/appendices/chance_of_success.dart';
import 'package:core/content/chapters/tests/critical.dart';
import 'package:core/content/chapters/tests/difficulties.dart';
import 'package:core/content/chapters/tests/tests.dart';
import 'package:powerbook/models.dart';

class TestChapter {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Tests"),
      contents: [tests, critical, difficulties]);
  static final Content tests = Tests();
  static final Content critical = Critical();
  static final Content difficulties =
      Difficulties(ChanceOfSuccessAppendix.chapter);
}
