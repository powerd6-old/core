import 'package:core/src/introduction/distribution.dart';
import 'package:core/src/introduction/recommended_distribution.dart';
import 'package:core/src/introduction/welcome.dart';
import 'package:powerbook/models.dart';

final List<Author> authors = [
  Author(
      name: "Hector Castelli Zacharias",
      email: "hector.zacharias@gmail.com",
      twitter: "ZektorH"),
];

Chapter introductionChapter = Chapter(
    heading: Heading(title: "Introduction"),
    contents: [
      Welcome(),
      Distribution(recommendedAppendix: recommendedAppendix)
    ]);

Chapter recommendedAppendix = Chapter(
    heading: Heading(title: "Recommended Expansions and Supplements"),
    contents: [RecommendedDistribution()]);

class CoreRuleBook extends Book {
  CoreRuleBook()
      : super(
            heading: Heading(
                title: "Core Rulebook",
                subtitle: "The core rules of the powerd6 role-playing system."),
            authors: authors,
            chapters:
                ChapterList(heading: Heading(title: "Chapters"), chapters: [
              introductionChapter,
            ]),
            appendices: ChapterList(
                heading: Heading(title: "Appendices"),
                chapters: [recommendedAppendix]));
}
