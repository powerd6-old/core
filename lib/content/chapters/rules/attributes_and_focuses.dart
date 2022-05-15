import 'package:powerbook/extensions.dart';
import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class AttributesAndFocuses extends IndexableMarkdownContent {
  AttributesAndFocuses() : super(markdown: """
# Attributes

Powerd6 relies on attributes to express the unique aspects of characters and describe what they are capable of.

Attributes represent physical, emotional and mental traits a characters possesses. These can range from `${AttributeValues.minimum.value}` to `${AttributeValues.maximum.value}` in value.

Each attribute also has three focuses, representing more nuanced aspects of attribute and describing a precise aspect of that attribute.

Later on, characters may choose a single attribute to be their **Preferred Attribute** and acquire **focuses**.

${Attributes.attributes.map((e) => AttributeContent(e).toHtml()).join()}
""");

  @override
  List<Indexable> getChildren() {
    return Attributes.attributes.map((e) => AttributeContent(e)).toList();
  }
}

class AttributeContent extends Content with Indexable {
  final Attribute attribute;

  AttributeContent(this.attribute);

  @override
  String getId() {
    return "attribute-${attribute.abbreviation.toLowerCase()}";
  }

  @override
  String getTitle() {
    return attribute.name;
  }

  @override
  List<Indexable> getChildren() {
    return attribute.focuses.map((e) => FocusContent(focus: e)).toList();
  }

  @override
  String toHtml() {
    return attribute.toHtml();
  }
}

class FocusContent extends Content with Indexable {
  final Focus focus;

  FocusContent({required this.focus});

  @override
  String getId() {
    return "focus-${focus.name.toLowerCase()}";
  }

  @override
  String getTitle() {
    return focus.name;
  }

  @override
  String toHtml() {
    return focus.toHtml();
  }
}
