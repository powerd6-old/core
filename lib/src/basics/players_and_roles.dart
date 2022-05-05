import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class PlayerAndRoles extends Content with Indexable {
  static Heading heading = Heading(title: "Players and their roles");

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
    return [CharacterRole(), GameMasterRole(), SharingRoles()];
  }

  @override
  String toHtml() {
    return '${heading.toHtml()}'
        '<p>There are two roles that need to be filled in order to run a successful powerd6 game: Characters and the Game Master.</p>'
        '${getChildren().map((e) => e as Content).map((e) => e.toHtml()).join()}';
  }
}

class CharacterRole extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Characters");

  CharacterRole() : super(markdown: """
${heading.toHtml()}

Players that take control of a character will controlling said character.

As a Character, you are responsible for describing everything that your character feels, thinks and does.

In short terms, you interpret a character and give it life. While embodying your character is encouraged, it is not a requirement.
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}

class GameMasterRole extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Game Master");

  GameMasterRole() : super(markdown: """
${heading.toHtml()}

The Game Master is the narrator, puppeteer and ruler of the world in which the Characters live in.

Describing the world, controlling characters that are not controlled by players, creating the story and providing mystery, challenge and fun to the players are their main tasks.

They also serve as the final voice when it comes to rulings and disagreements between players. One of the players must play as the Game Master for the game to be started.
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}

class SharingRoles extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "A note of sharing responsibilities");

  SharingRoles() : super(markdown: """
${heading.toHtml()}

All players in powerd6 are important, regardless of their role in the game.

Furthermore, a single player can play as multiple Characters, or as the Game Master and a Character. This is not recommended. A big part of the fun of games like this one is surprise and improvisation, and having a player responsible for providing the scenario and deciding how to act on it will often cause a joyless game.
""");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}
