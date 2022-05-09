import 'package:core/content/authors.dart';
import 'package:core/content/chapters.dart';
import 'package:core/content/heading.dart';
import 'package:powerbook/models.dart';

class CoreRuleBook extends Book {
  CoreRuleBook()
      : super(
            heading: BookHeading.heading,
            authors: Authors.authors,
            chapters: BookChapters.chapters,
            appendices: BookChapters.appendices);
}
