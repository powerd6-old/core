import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class PointBuy extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Point Buy");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  PointBuy() : super(markdown: """
${heading.toHtml()}

""");
}
