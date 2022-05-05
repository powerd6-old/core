import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Materials extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Materials");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Materials() : super(markdown: """
${heading.toHtml()}

This book is written considering that the players have a couple of items available to them:

- Note-taking material, like pen and paper;
- At least one six-sided die;
- This book;

While these items can be easily replaced by digital alternatives, they will be referred to as their physical counterparts for simplicity.
""");
}
