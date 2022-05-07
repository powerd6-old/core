import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Damage extends MarkdownContent with Indexable {
  static Heading heading = Heading(
      title: "Taking Damage",
      subtitle: "Injuries, unconsciousness, death and reanimation");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  @override
  List<Indexable> getChildren() {
    return [injuries, unconsciousness, death];
  }

  static final Injuries injuries = Injuries();
  static final Unconsciousness unconsciousness = Unconsciousness();
  static final Death death = Death();

  Damage() : super(markdown: """
${heading.toHtml()}

Whenever damage is dealt to a character, that damage is removed from it's Health Pool.

Once this happens, the following rules guide you on interpreting how that damage is received:

${DamageCheckpoints().toHtml()}
${injuries.toHtml()}
${unconsciousness.toHtml()}
${death.toHtml()}
""");
}

class DamageCheckpoints extends Content {
  @override
  String toHtml() {
    return '<table>'
        '<thead>'
        '<tr>'
        '<th>Current Health</th>'
        '<th>Effect</th>'
        '</tr>'
        '</thead>'
        '<tbody>'
        '<tr>'
        '<td>Half of your maximum health, rounded down</td>'
        '<td>Receive one light injury.</td>'
        '</tr>'
        '<tr>'
        '<td>One third of your maximum health, rounded down</td>'
        '<td>Receive one light injury.</td>'
        '</tr>'
        '<tr>'
        '<td>1</td>'
        '<td>Receive one grave injury.</td>'
        '</tr>'
        '<tr>'
        '<td>0</td>'
        '<td>Your character goes unconscious and unable to act.</td>'
        '</tr>'
        '<tr>'
        '<td>-5</td>'
        '<td>Your character is dead.</td>'
        '</tr>'
        '</tbody>'
        '</table>';
  }
}

class Injuries extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Injuries");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Injuries() : super(markdown: """
${heading.toHtml()}

In general injuries are semi-permanent effects that hinder a character for a fixed amount of time. They are written on the "bonus" section of the character sheet.

There are two types of injuries: Light and Grave.

Light injuries take 1 week to heal and remove 1 Health Point from a character's maximum Health Points. 
Grave injuries take 1 month to heal and remove 3 Health Points from a character's maximum Health Points.

""");
}

class Unconsciousness extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Unconsciousness");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Unconsciousness() : super(markdown: """
${heading.toHtml()}

Going unconscious is an extremely dangerous thing.

While unconscious, your character is unable to do anything but is still a viable target for your opponents.

Every turn, if you fail an Endurance test of difficulty 7, you take 1 damage.
""");
}

class Death extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Death");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  Death() : super(markdown: """
${heading.toHtml()}

Death is the point of no return.

Once a character is dead, nothing can save it.
""");
}
