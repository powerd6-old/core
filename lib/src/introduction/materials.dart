import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Materials extends Content with Indexable {
  Heading heading = Heading(title: "Materials", headingLevel: 2);

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  String toHtml() {
    return '${heading.toHtml()}'
        '<p>This book is written considering that the players have a couple of items available to them:</p>'
        '<ul>'
        '<li>Note-taking material, like pen and paper</li>'
        '<li>At least one six-sided die</li>'
        '<li>This book</li>'
        '</ul>'
        '<p>While these items can be easily replaced by digital alternatives, they will be referred to as their physical counterparts for simplicity.</p>';
  }
}
