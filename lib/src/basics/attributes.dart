import 'package:core/src/basics/chances_success.dart';
import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class Attribute extends Content with Indexable {
  final int number;
  final String name, abbreviation, description;
  final List<Focus> focuses;

  Attribute(
      {required this.number,
      required this.name,
      required this.abbreviation,
      required this.description,
      required this.focuses});

  @override
  String getId() {
    return "attribute-${abbreviation.toLowerCase()}";
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  List<Indexable> getChildren() {
    return focuses;
  }

  @override
  String toHtml() {
    return '<article id=${getId()}>'
        '${Heading(title: "$number - $name", subtitle: abbreviation).toHtml()}'
        '$description'
        '<section>'
        '${Heading(title: "Focuses").toHtml()}'
        '${focuses.map((e) => e.toHtml()).join()}'
        '</section>'
        '</article>';
  }
}

class Focus extends Content with Indexable {
  final String name, description, concept;

  Focus({required this.name, required this.description, required this.concept});

  @override
  String getId() {
    return "focus-${name.toLowerCase()}";
  }

  @override
  String getTitle() {
    return name;
  }

  @override
  String toHtml() {
    return '<article id=${getId()}>'
        '${Heading(title: name, subtitle: description).toHtml()}'
        '<blockquote>$concept</blockquote>'
        '</article>';
  }
}

class Attributes extends MarkdownContent with Indexable {
  static Heading heading = Heading(title: "Attributes");

  @override
  String getId() {
    return heading.getId();
  }

  @override
  String getTitle() {
    return heading.getTitle();
  }

  static final attributes = [
    perception,
    strength,
    charisma,
    agility,
    wisdom,
    dexterity
  ];

  @override
  List<Indexable> getChildren() {
    return attributes;
  }

  Attributes() : super(markdown: """
${heading.toHtml()}

Powerd6 relies on attributes to express the unique aspects of characters and describe what they are capable of.

Attributes represent physical, emotional and mental traits a characters possesses. These can range from `${ChancesOfSuccess.minimumAttributeValue}` to `${ChancesOfSuccess.maximumAttributeValue}` in value.

Each attribute also has three focuses, representing more nuanced aspects of attribute and describing a precise aspect of that attribute.

Later on, characters may choose a single attribute to be their **Preferred Attribute** and acquire **focuses**.

${attributes.map((e) => e.toHtml()).join()}
""");

  static Attribute perception = Attribute(
      number: 1,
      name: "Perception",
      abbreviation: "PER",
      description:
          "Perception is related to a character's ability to capture, feel and process the big and small signs of the environment and people around them.",
      focuses: [
        Focus(
            name: "Awareness",
            description:
                "Awareness represent a character's ability of becoming conscious of the environment around them. Noticing details, perceiving signs, hearing quiet sounds are all things that rely on awareness.",
            concept:
                "If your character is a detective that unveils mysteries around them, or a hunter that never misses the scent of its prey, awareness is your friend."),
        Focus(
            name: "Insight",
            description:
                "Similar to awareness, but related to interpersonal aspects. Catching a lie, perceiving someone's feelings, uncovering intentions rely on insight.",
            concept:
                "Seeing through lies, noticing discomfort and just knowing that one guard is hiding something about the real dangers on the mine are all things a character that relies on insight might do."),
        Focus(
            name: "Instinct",
            description:
                "Unlike the two other focuses, instinct relies on trusting what's within rather than looking at the environment. Having a gut feeling or a hunch about something is related to instinct.",
            concept:
                "Sometimes things just don't <i>seem</i> right, and you know it. Your sharp instincts can tell you more than the deepest observations.")
      ]);

  static Attribute strength = Attribute(
      number: 2,
      name: "Strength",
      abbreviation: "STR",
      description:
          "Strength is related to the physical quality of a character's body.",
      focuses: [
        Focus(
            name: "Power",
            description:
                "Power is all about force. How much can they lift, how far they can throw and how much impulse they can put behind their movement are all related to power.",
            concept:
                "Is your character a strongman that thinks problems can always be solved with might? Then Power is what you are looking for."),
        Focus(
            name: "Endurance",
            description:
                "Endurance represents resilience and longevity. Running for a long time, enduring the heat of a desert or holding a difficult position for a long time relate to endurance.",
            concept:
                "Being tired is something your character might not experience. Rugged travellers or an indomitable sailor all have the endurance for the task ahead of them."),
        Focus(
            name: "Toughness",
            description:
                "Similar to endurance, but with less emphasis on time. Taking a punch, blocking a blow or breaking a brick with your head relate to toughness.",
            concept:
                "If your character is the shield of the weak, or can simply shrug off the hardest of hits, then Toughness is in your blood.")
      ]);

  static Attribute charisma = Attribute(
      number: 3,
      name: "Charisma",
      abbreviation: "CHA",
      description:
          "Charisma is related to your ability to enchant, control and manipulate others.",
      focuses: [
        Focus(
            name: "Likeability",
            description:
                "Likeable character's are the fun of the party. Getting invited to an event, receiving praises for your work or winning a popularity contest rely on likeability.",
            concept:
                "You are an adored performer, or a popular aristocrat. You are guaranteed to be invited to a party, or gain the favour of the village workers."),
        Focus(
            name: "Persuasion",
            description:
                "Influencing and changing opinions are at the core of what persuasion represents. Convincing someone of a lie, getting a discount or bluffing are achieved with persuasion.",
            concept:
                "Logically or illogically, it seems that people always think you are talking the deepest truths."
                '"Maybe he is truly just walking in this back-alley with no intentions of burglary, and that rope is just a fashion statement", thought the guard that found you lurking in the dark back-alley.'),
        Focus(
            name: "Seduction",
            description:
                "Similar to likeability, but with a narrower target audience. It might mean your character follows the beauty standards, it might mean they have airs about them that make them irresistible.",
            concept:
                "You've hear the enamoured sighs when you walk into the room, and you know full well you can throw your pretty face to get what you want.")
      ]);

  static Attribute agility = Attribute(
      number: 4,
      name: "Agility",
      abbreviation: "AGI",
      description: "Agility is related to how quickly your body moves.",
      focuses: [
        Focus(
            name: "Flexibility",
            description:
                "A flexible body is a thing of wonders. Fitting in small spaces, moving around traps or pulling off acrobatic manoeuvres all need flexibility.",
            concept:
                "Your comrades truly believe you liquefy yourself when infiltrating a target location. Only that explains how you managed to contort and climb into all those little spaces. Don't be mistaken, you could be a circus performer, or a lethal martial artist, or both."),
        Focus(
            name: "Reflexes",
            description:
                "Impulse at its best. Your movements don't require thinking, you've mastered your body. Reacting to the unexpected, catching things falling and preventing trips and falls relate to reflexes.",
            concept:
                "There is no doubt in your movements, as long as you can see it, you can probably dodge it. As a bonus, you never dropped your mother's vase by accident."),
        Focus(
            name: "Speed",
            description:
                "Speed represents your body's ability to move fast. Sprinting, dashing or barraging your enemy with attacks depend on speed.",
            concept:
                "You are the chosen one to deliver a message. In combat, you are a flash in your allies eyes, and the last thing your enemies see is you passing them.")
      ]);

  static Attribute wisdom = Attribute(
      number: 5,
      name: "Wisdom",
      abbreviation: "WIS",
      description: "Wisdom represents the intellectual aspects of a character.",
      focuses: [
        Focus(
            name: "Judgment",
            description:
                "Judgment is the ability to use knowledge effectively. Looking at things with a new perspective, evaluating when and how to apply knowledge need judgment.",
            concept:
                "You are a genius inventor, as soon as you heard of something you didn't know before, you thought of multiple ways to make it better. Your toolkit might be the most advanced thing some ever saw, nothing to say about what you actually do with it."),
        Focus(
            name: "Knowledge",
            description:
                "Knowledge represents the raw amount of information that a character has at their disposal. Remembering locations, languages and other mechanisms depend on knowledge.",
            concept:
                "You are a walking encyclopedia, or you've simply mastered all the fauna and flora of your religion. The amounts of information your head holds is comparable to an entire kingdom's library."),
        Focus(
            name: "Mysticism",
            description:
                "Mysticism is similar to knowledge, but related to the immaterial. Rituals, superstitions, mystical creatures, and deities are all related to religion.",
            concept:
                "Rituals, prayer and the occult may be part of your life. You might try to present yourself as a preacher, or as a scarred survivor of what lurks unseen.")
      ]);

  static Attribute dexterity = Attribute(
      number: 6,
      name: "Dexterity",
      abbreviation: "DEX",
      description: "Dexterity related to the effectiveness of movement.",
      focuses: [
        Focus(
            name: "Coordination",
            description:
                "Moving with mastery, controlling each part with decisiveness. Climbing walls, riding horses or sleight of hand tricks relate to coordination.",
            concept:
                "Some people struggle coordinating their two arms, but you could probably deal with two or three more without a hitch. Complex movements with multiple steps are natural to you."),
        Focus(
            name: "Grace", // TODO: Consider renaming to Poise
            description:
                "Graceful and beautiful movements. Dancing, balancing on a rope or mixing chemicals relate to grace.",
            concept:
                "You are a craftsman with precise movements. Your body moves like a fine instrument, be it sewing, brewing or dancing. Your movements feel refined and light, even when swinging a heavy war hammer."),
        Focus(
            name: "Precision",
            description:
                "Precise and measured movements are what precision is all about. Shooting targets, picking locks or operating on someone need precision.",
            concept:
                "You are a sharpshooter capable of hitting the seams in the armour of distant enemies, or you are a sneaky fellow that knows multiple ways of ending someone's life.")
      ]);
}
