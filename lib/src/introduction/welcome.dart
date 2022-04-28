import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Welcome extends Content with Indexable {
  Heading heading = Heading(title: "Welcome");
  @override
  String toHtml() {
    return """
      ${heading.toHtml()}
      <p>Welcome to the powerd6 role-playing system.</p>
      <p>This book contains the core rules of the system and provide a framework for players to use in order to run their fantastical narratives.</p>
      <p>The rules of powerd6 are designed for everyone and are guided by these principles:</p>
      <ol>
        <li>Easy to learn</li>
        <li>Easy to play</li>
        <li>Easy to expand</li>
      </ol>
      <p>This makes powerd6 a great system to introduce a group of new players to the amazing world of role-playing games, without losing the ability to grow with them and provide astounding experiences when they are more experienced.</p>
""";
  }

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }
}
