import 'package:core/content/appendices/recommended.dart';
import 'package:core/content/chapters/introduction.dart';
import 'package:core/core.dart';
import 'package:powerbook/models.dart';

class BookChapters {
  static final ChapterList chapters =
      ChapterList(heading: Heading(title: "Chapters"), chapters: [
    IntroductionChapter.chapter,
  ]);

  static final ChapterList appendices =
      ChapterList(heading: Heading(title: "Appendices"), chapters: [
    RecommendedAppendix.chapter,
  ]);
}
