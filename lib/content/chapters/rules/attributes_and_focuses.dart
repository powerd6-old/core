import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';
import 'package:powerd6/models.dart';

class AttributesAndFocuses extends MarkdownContent {
  AttributesAndFocuses()
      : super(markdown: """
# Attributes

Powerd6 relies on attributes to express the unique aspects of characters and describe what they are capable of.

Attributes represent physical, emotional and mental traits a characters possesses. These can range from `${AttributeValues.abysmal.value}` to `${AttributeValues.legendary.value}` in value.

Each attribute also has three focuses, representing more nuanced aspects of attribute and describing a precise aspect of that attribute.

Later on, characters may choose a single attribute to be their **Preferred Attribute** and acquire **focuses**.

${[
          Attributes.perception,
          Attributes.strength,
          Attributes.charisma,
          Attributes.agility,
          Attributes.wisdom,
          Attributes.dexterity
        ].map((e) => AttributeContent(e).toHtml()).join()}
""");
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
    return '<article id=${getId()}>'
        '${Heading(title: "${attribute.number} - ${attribute.name} (${attribute.abbreviation})").toHtml()}'
        '${attribute.description.description.map((e) => '<p>$e</p>').join()}'
        '<section>'
        '${Heading(title: "Focuses").toHtml()}'
        '${attribute.focuses.map((e) => FocusContent(focus: e).toHtml()).join()}'
        '</section>'
        '</article>';
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
    return '<article id=${getId()}>'
        '${Heading(title: focus.name).toHtml()}'
        '${focus.description.description.map((e) => "<p>$e</p>").join()}'
        '</article>';
  }
}